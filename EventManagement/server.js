var express = require('express');
var path = require('path');
var db = require('./dbConfig');
var mysql = require('mysql'); 
var app = express();
var session = require('express-session');
 
app.use(session({
  secret: 'this is my secret',
  resave: false,
  saveUninitialized: true,
}))

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
 
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', function(req, res, next) {
	res.render('home', { title: 'Home' });
});

app.get('/userhome', function(req, res, next) {
	res.render('userhome', { title: 'userhome' });
});

app.get('/adminhome', function(req, res, next) {
	res.render('adminhome', { title: 'adminhome' });
});

app.get('/gallery', function(req, res, next) {
	res.render('gallery', { title: 'gallery' });
});

app.get('/usergallery', function(req, res, next) {
	res.render('usergallery', { title: 'usergallery' });
});

app.get('/admingallery', function(req, res, next) {
	res.render('admingallery', { title: 'admingallery' });
});

app.get('/services', function(req, res, next) {
	res.render('services', { title: 'services' });
});

app.get('/userservices', function(req, res, next) {
	res.render('userservices', { title: 'userservices' });
});

app.get('/adminservices', function(req, res, next) {
	res.render('adminservices', { title: 'adminservices' });
});

app.get('/booknow', function(req, res, next) {
	res.render('booknow', { title: 'booknow' });
});

app.get('/Booking', function(req, res, next) {
	res.render('Booking', { title: 'Booking', errormessage: ''});
});

app.get('/login', function(req, res, next) {
	res.render('login', { title: 'login' });
});

app.get('/loginerror', function(req, res, next) {
	res.render('loginerror', { title: 'loginerror' });
});

app.get('/register', function(req, res, next) {
	res.render('register', { title: 'register' });
});

app.get('/userregister', function(req, res, next) {
	res.render('userregister', { title: 'userregister' });
});

app.get('/catering', function(req, res, next) {
	res.render('catering', { title: 'catering' });
});

app.get('/cakes', function(req, res, next) {
	res.render('cakes', { title: 'cakes' });
});

app.get('/theme', function(req, res, next) {
	res.render('theme', { title: 'theme' });
});

app.get('/usercatering', function(req, res, next) {
	res.render('usercatering', { title: 'usercatering' });
});

app.get('/usercakes', function(req, res, next) {
	res.render('usercakes', { title: 'usercakes' });
});

app.get('/usertheme', function(req, res, next) {
	res.render('usertheme', { title: 'usertheme' });
});

app.get('/contactus', function(req, res, next) {
	res.render('contactus', { title: 'Contact Us', errormessage: ''});
});

app.get('/userfeedback', function(req, res, next) {
	res.render('userfeedback', { title: 'userfeedback', errormessage: ''});
});

app.get('/geteventusers', function (req, res) {

	db.query("SELECT * FROM eventusers", function (err, result) {	
    	if (err) throw err;
		console.log(result);
		res.render('geteventusers', { title: 'List of Registered Users', eventusersData: result });
		});
});

app.get('/userlogin', function (req, res) {

	db.query(`SELECT eb.bookingid, concat(eu.firstname, ' ', eu.lastname) as username, eb.email, eb.datecreated, eb.eventtype, et.eventname, p.productname 
	as cateringname, p.pricelist as pricelist1, eb.cakeid, eb.cakedetailtypeid,  pp.productname, ct.size, ct.price, eb.textoncake, eb.themeid, ppp.productname as themename, 
	ppp.pricelist as pricelist3, eb.venue, eb.address, eb.contactno, eb.message, eb.date FROM eventbookings eb
	left join eventusers eu on eu.id = eb.userid
	left join eventtype et on et.eventtypeid = eb.eventtype
	left join products p on p.id = eb.cateringid
	left join cakedetailtype ct on ct.id = eb.cakedetailtypeid
	left join products pp on pp.id = ct.cakecategoryid
	left join products ppp on ppp.id = eb.themeid`, function (err, result) {	
    	if (err) throw err;
		console.log(result);
		res.render('userlogin', { title: 'List of Event Bookings', userbookingsData: result });
		});
});

app.get('/getbookings', function (req, res) {

	db.query(`SELECT eb.bookingid, concat(eu.firstname, ' ', eu.lastname) as username, eb.email, eb.datecreated, eb.eventtype, et.eventname, p.productname 
	as cateringname, p.pricelist as pricelist1, eb.cakeid, eb.cakedetailtypeid,  pp.productname, ct.size, ct.price, eb.textoncake, eb.themeid, ppp.productname as themename,
	ppp.pricelist as pricelist3, eb.venue, eb.address, eb.contactno, eb.message, eb.date FROM eventbookings eb
	left join eventusers eu on eu.id = eb.userid
	left join eventtype et on et.eventtypeid = eb.eventtype
	left join products p on p.id = eb.cateringid
	left join cakedetailtype ct on ct.id = eb.cakedetailtypeid
	left join products pp on pp.id = ct.cakecategoryid
	left join products ppp on ppp.id = eb.themeid`, function (err, result) {	
    	if (err) throw err;
		console.log(result);
		res.render('getbookings', { title: 'List of Event Bookings', bookingsData: result });
		});
});

app.get('/getqueries', function (req, res) {

	db.query("SELECT * FROM eventquestions", function (err, result) {	
    	if (err) throw err;
		console.log(result);
		res.render('getqueries', { title: 'List of Questions and Queries', questionsData: result });
		});
});
	
app.get('/getfeedback', function (req, res) {

	db.query("SELECT * FROM eventfeedback", function (err, result) {
		if (err) throw err;
		console.log(result);
		res.render('getfeedback', { title: 'List of Feedback', feedbackData: result });
		});
});

app.get('/logout', function (req, res) {

	req.session.destroy();
		res.redirect('/');
});

app.post('/geteventusers', function (req, res) {
    var id = req.body.id;
    console.log(req.body);

    var sql = 'DELETE FROM eventusers WHERE id = ?';

    db.query(sql, [id], function(err, result) {
        if (err) {
            console.error(err);
            return res.status(500).send('Error deleting record');
        }

        console.log('Record deleted');
        return res.render('adminhome');
    });
});

app.post('/getbookings', function (req, res) {
    var bookingid = req.body.bookingid;
    console.log(req.body);

    var sql = 'DELETE FROM eventbookings WHERE bookingid = ?';

    db.query(sql, [bookingid], function(err, result) {
        if (err) {
            console.error(err);
            return res.status(500).send('Error deleting record');
        }

        console.log('Record deleted');
        return res.render('adminhome');
    });
});

app.post('/getqueries', function (req, res) {
    var id = req.body.id;
    console.log(req.body);

    var sql = 'DELETE FROM eventquestions WHERE id = ?';

    db.query(sql, [id], function(err, result) {
        if (err) {
            console.error(err);
            return res.status(500).send('Error deleting record');
        }

        console.log('Record deleted');
        return res.render('adminhome');
    });
});

app.post('/getfeedback', function (req, res) {
    var id = req.body.id;
    console.log(req.body);

    var sql = 'DELETE FROM eventfeedback WHERE id = ?';

    db.query(sql, [id], function(err, result) {
        if (err) {
            console.error(err);
            return res.status(500).send('Error deleting record');
        }

        console.log('Record deleted');
        return res.render('adminhome');
    });
});

app.post('/register', function(req, res, next) {
	var firstname = req.body.firstname;
	var lastname = req.body.lastname;
	var email = req.body.email;
	var username = req.body.username;
	var contactno = req.body.contactno;
	var password = req.body.password;
	var sql = `INSERT INTO eventusers(firstname, lastname, email, username, contactno, password) VALUES ("${firstname}", "${lastname}", "${email}", "${username}", "${contactno}", "${password}")`;
	db.query(sql, function(err, result) {
		if (err) {
			throw err;
			res.render('register', {succes: false, errormessage: 'Something went wrong!'})
		}
		else {
			console.log('1 record inserted');
			res.render('login');
		}	
		    
	});
});

app.post('/Booking', function(req, res, next) {
	var email = req.body.email;
	var date = req.body.date;
	var datecreated = req.body.datecreated;
	var eventtype = req.body.eventtype;
	var address = req.body.address;
	var venue = req.body.venue;
	var contactno = req.body.contactno;
	var cateringid = req.body.cateringid;
	var cakeid = req.body.cakeid;
	var cakedetailtypeid = req.body.cakedetailtypeid;
	var textoncake = req.body.textoncake;
	var themeid = req.body.themeid;
	var message = req.body.message;
	
	var sql = `INSERT INTO eventbookings(email, datecreated, date, eventtype, address, venue, contactno, cateringid, cakeid, cakedetailtypeid, textoncake, themeid, message) 
	VALUES ( "${email}", "${datecreated}", "${date}", "${eventtype}", "${address}", "${venue}", "${contactno}", "${cateringid}", "${cakeid}", "${cakedetailtypeid}", "${textoncake}", "${themeid}", "${message}")`;
	db.query(sql, function(err, result) {
		if (err) {
		   throw err;
		   res.render('Booking', {success: false, errormessage: 'Something went wrong!'});
	   }
	   else {
           console.log("1 record inserted");
		   res.render('Booking', {success: true, errormessage: 'Thank you for your booking, it is being processed and we will email you with the payment options!'});
	    }   

    });
});	

app.post('/login', function(req,res){
	var user_name=req.body.user_name;
	var passw=req.body.passw;
	
	db.query(`SELECT * from eventusers where email="${user_name}"and password="${passw}" `, function(err,result){
        if (err) throw err;

        if (result.length > 0) {
            var usertype = result[0].usertype;

            if (usertype === 'Admin') {
                res.render('adminhome');
            } else {

                req.session.usertype = 'User';
                res.render('userhome');
            }
        } else {
            res.render('loginerror');
        }
	
	});
});

app.post('/questions', function(req, res) { 
	console.log("This is a contact us function");
    var firstname = req.body.firstname;
    var lastname = req.body.lastname;
    var email = req.body.email;
	var contactno = req.body.contactno;
    var message = req.body.message;
    //console.log(req.body);
    console.log(message);
    var sql = `INSERT INTO eventquestions (firstname, lastname, email, contactno, message)
                     VALUES ("${firstname}", "${lastname}", "${email}", "${contactno}", "${message}")`;
    db.query(sql, function (err, result) {
        if (err) {
			throw err;
            res.render('contactus', {success: false, errormessage: 'Something went wrong!'});
        }
        else {
			console.log("1 record inserted");
            res.render('contactus', {success: true, errormessage: 'Thankyou for filling the form, your details are being processed!'});
        }
        
        });
});      

app.post('/feedback', function(req, res) { 
	console.log("This is a feedback function");
    var email = req.body.email;
    var taste = req.body.taste;
    var quality = req.body.quality;
	var booking = req.body.booking;
    var value = req.body.value;
	var staff = req.body.staff;
    var services = req.body.services;
	var experience = req.body.experience;
    var suggestions = req.body.suggestions;
    console.log(taste);
    var sql = `INSERT INTO eventfeedback (email, taste, quality, booking, value, staff, services, experience, suggestions) 
	VALUES ("${email}", "${taste}", "${quality}", "${booking}", "${value}", "${staff}", "${services}", "${experience}", "${suggestions}")`;
    db.query(sql, function (err, result) {
        if (err) {
			throw err;
            res.render('userfeedback', {success: false, errormessage: 'Something went wrong!'});
        }
        else {
			console.log("1 record inserted");
            res.render('userfeedback', {success: true, errormessage: 'Thankyou for your feedback, we will get back to you as soon as possible!'});
        }
        
        });
});      

app.listen(3000);
console.log('Node app is running on port 3000');