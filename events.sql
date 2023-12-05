-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2023 at 08:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `cakedetailtype`
--

CREATE TABLE `cakedetailtype` (
  `id` int(11) NOT NULL,
  `cakecategoryid` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cakedetailtype`
--

INSERT INTO `cakedetailtype` (`id`, `cakecategoryid`, `size`, `price`) VALUES
(1, 10, 6, 75),
(2, 10, 8, 95),
(3, 10, 10, 115),
(4, 11, 6, 60),
(5, 11, 8, 82),
(6, 11, 10, 103),
(7, 12, 6, 55),
(8, 12, 8, 72),
(9, 12, 10, 89),
(10, 13, 6, 65),
(11, 13, 8, 86),
(12, 13, 10, 107),
(13, 14, 6, 75),
(14, 14, 8, 95),
(15, 14, 10, 115),
(16, 15, 6, 55),
(17, 15, 8, 73),
(18, 15, 10, 94),
(19, 16, 6, 60),
(20, 16, 8, 75),
(21, 16, 10, 93),
(22, 17, 6, 59),
(23, 17, 8, 72),
(24, 17, 10, 90),
(25, 18, 6, 85),
(26, 18, 8, 105),
(27, 18, 10, 120),
(28, 19, 6, 80),
(29, 19, 8, 102),
(30, 19, 10, 118),
(31, 20, 6, 78),
(32, 20, 8, 91),
(33, 20, 10, 110),
(34, 21, 6, 55),
(35, 21, 8, 72),
(36, 21, 10, 89);

-- --------------------------------------------------------

--
-- Table structure for table `eventbookings`
--

CREATE TABLE `eventbookings` (
  `bookingid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `datecreated` date NOT NULL,
  `eventtype` int(11) NOT NULL,
  `cateringid` int(11) NOT NULL,
  `cakeid` int(11) NOT NULL,
  `cakedetailtypeid` int(11) NOT NULL,
  `textoncake` varchar(60) NOT NULL,
  `themeid` int(11) NOT NULL,
  `venue` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactno` int(30) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventbookings`
--

INSERT INTO `eventbookings` (`bookingid`, `userid`, `email`, `datecreated`, `eventtype`, `cateringid`, `cakeid`, `cakedetailtypeid`, `textoncake`, `themeid`, `venue`, `address`, `contactno`, `message`, `date`) VALUES
(1, 2, 'john43@gmail.com', '2023-10-20', 2, 3, 16, 20, 'Happy 60th to my Dear Jane!', 26, 'Penrose Community Hall Centre', '23 Jill Road', 5258837, '60th Adult Birthday\r\nTime: 1-5pm\r\nNo of guests: 12pax', '2023-10-27'),
(2, 3, 'mary101@gmail.com', '2023-10-22', 1, 1, 10, 1, 'Happy Birthday Superman Cody!', 32, 'Own Home', '31 Parridge Road, Mt Eden', 5334721, '6th year old son birthday\nTime: 2-6pm\nNo of guests: 10pax', '2023-10-29'),
(3, 5, 'roy1988@hotmail.com', '2023-10-23', 2, 5, 15, 17, 'Happy Birthday the one and only Terry, The Legend!', 30, 'Rose Garden Villa', '11 Martin Place, Glenfield', 5251901, '29th Friends Birthday\nTime: 6-10pm\nNo of guests: 12pax', '2023-10-30'),
(4, 7, 'ganeshan1000@hotmail.com', '2023-10-25', 4, 9, 17, 24, 'Happy 40th Anniversary, The Love of My Life!', 34, 'My House', '250 Baldwin Drive, Takapuna', 5345257, 'Our 40th Anniversary\nTime: 5:30-10pm\nSmall gathering of 25 pax', '2023-10-31'),
(5, 8, 'boontan131@hotmail.com', '2023-11-01', 3, 4, 15, 18, 'Congratulations to Boon and His Lovely Wife!', 32, 'My wife\'s home', '138 Gladwell Place, Penrose', 5352010, 'Gender Reveal celebration for my wife\nTime: 12-3pm\nNo of guests: 28pax', '2023-11-06'),
(6, 9, 'emilee22@gmail.com', '2023-11-03', 1, 2, 14, 13, 'Happy 8th Birthday to our Favourite Spidey!', 28, 'Littleton Community Hall', '83 Unison Road, Mt Roskill', 5265318, 'My son\'s 8th birthday\nTime: 11:30-2:30pm\nNo of guests: 8pax', '2023-11-13'),
(7, 11, 'jchow1019@hotmail.com', '2023-11-04', 1, 1, 11, 4, 'Happy 5th Birthday, Our Sunshine Alicia!', 26, 'Chipmunks Botany', '105 Watford Drive, Botany', 5331687, 'Daughter\'s 5th birthday\nTime: 12-4pm\nNo of guests: 10 pax', '2023-11-14'),
(8, 12, 'jimwilliamson10@hotmail.com', '2023-11-10', 4, 8, 21, 34, 'My Sweet Lemon Cake, Happy Anniversary!', 32, 'My home', '288 Aileen Drive, Mt Eden', 5270090, 'My wife anniversary\nTime: 6:30-9:30pm\nNo of guests: 6pax', '2023-11-15'),
(9, 13, 'annabelle40@hotmail.com', '2023-11-12', 3, 4, 19, 28, 'To Sarah and Brett, Congratulations!', 33, 'My sister\'s house', '3 Arkville Street, Botany', 2735168, 'My sister\'s gender reveal \nTime: 3-5:30pm\nNo of guests: 9 pax', '2023-11-20'),
(10, 15, 'parshey120@hotmail.com', '2023-11-15', 1, 2, 13, 11, 'Happy 11th Birthday, You Rock Ruben!', 22, 'Glen Innes Community Centre ', '154 Darth Avenue', 5254073, 'My son\'s 11th birthday \nTime: 2:30-5pm\nNo of guests: 12pax', '2023-11-24'),
(11, 16, 'bataz1@hotmail.com', '2023-11-15', 4, 8, 14, 13, 'Love you Honey, Happy 30th Anniversary My Love!', 26, 'Bluetop Hill Villa', '38 Maria Crescent Drive, Brown\'s Bay', 5338272, 'Wife\'s surprise anniversary\nTime: 7-10pm\nNo of guests: 2pax', '2023-11-27'),
(12, 17, 'billiejay08@hotmail.com', '2023-11-16', 1, 1, 13, 11, 'Happy 7th Birthday, Love You James!', 24, 'Arlington Community Centre', '10 Jack Street, Pakuranga', 5241852, 'Son\'s 7th birthday party\nTime: 12-3pm\nNo of guests: 14pax', '2023-11-27'),
(13, 19, 'maison345@hotmail.com', '2023-11-18', 3, 4, 20, 32, 'To Ally and Keith, Congratulations!', 33, 'Sandy Beach Villa ', '3 March Road, Orakei', 5375127, 'Private room function for my brother\'s wife gender reveal\nTime: 3-7pm\nNo of guests: 12pax', '2023-11-28'),
(14, 20, 'blackburnrover2@hotmail.com', '2023-11-20', 2, 9, 15, 17, 'Blackburn for Life, Happy Birthday Jarrod!', 30, 'My house', '230 Drewberry Drive, Avondale', 5352810, 'My 30th birthday \nTime: 6:30-9:30pm\nNo of guests: 12pax', '2023-11-30'),
(15, 21, 'jacksonnill34@hotmail.com', '2023-11-22', 1, 3, 10, 1, 'Happy 8th Birthday, My Wonderful Son Cam!', 29, 'Chipmunks Manukau', '301 Manukau Road', 2737166, 'My son\'s 8th birthday party\nPrivate room function\nTime: 1-4pm\nNo of guests: 10pax', '2023-12-01'),
(16, 23, 'barryking10@hotmail.com', '2023-11-24', 4, 8, 12, 7, 'Happy 60th Anniversary, Sweet Jenna!', 35, 'Hunington Garden Villa', '140 Murray Lane Street, Birkenhead', 5286018, 'Private room for 60th anniversary\nTime: 7-9:30pm\nNo of guests: 2pax', '2023-12-04'),
(17, 24, 'mariannajoy142@hotmail.com', '2023-11-26', 3, 4, 18, 27, 'To Jai and Peri, Congratulations!', 32, 'Birkenhead Community Centre\r\n', '120 Viewpoint Road, Birkenhead', 5353281, 'My friend\'s gender reveal\nPrivate function\nTime: 4-8pm\nNo of guests: 20pax', '2023-12-08'),
(18, 26, 'heatherwhite101@hotmail.com', '2023-11-28', 1, 2, 19, 29, 'Happy 10th Birthday, Wonderkid Billy!', 25, 'Drayton Community Centre', '4 Attine Drive, Birkenhead', 5350067, 'My son\'s 10th birthday\nPrivate function\nTime: 3:30-6pm\nNo of guests: 12 pax', '2023-12-09'),
(19, 28, 'natasha@gmail.com', '2023-11-29', 2, 6, 14, 14, 'Happy Birthday, My Lovely Sister Rose!', 35, 'My Home', '22 Barrington Avenue, Penrose', 2735989, 'My sister\'s 29th Birthday,\nTime: 6:30-10:pm\nNo of pax: 15pax', '2023-12-03'),
(20, 29, 'puneet@gmail.com', '2023-11-29', 1, 1, 11, 4, 'Happy Birthday Javi, My Mini Hero!', 23, 'Chipmunks Mt Roskill', '152 Wardwick Road, Mt Roskill', 2730514, 'My 5 year old son birthday\nTime: 12-4pm\nNo of pax: 10pax', '2023-12-03'),
(21, 30, 'kk@kk.com', '2023-11-30', 1, 2, 10, 2, 'Happy 8th Birthday, Wonderful Ben!', 22, 'My house', '2 Rawson Street, Pukekohe', 5337624, 'My son 8 year old birthday, Time: 3-6pm, 12pax', '2023-12-07'),
(22, 31, 'pp@pp.com', '2023-11-30', 1, 2, 11, 4, 'Happy 10th Birthday, Sweet Alicia!', 30, 'My house', '610 James Road, Mt Eden', 5352927, 'My daughter 10 year birthday, Time:12-4pm, 10pax', '2023-12-09'),
(23, 32, 'bran@a.com', '2023-12-01', 1, 3, 18, 26, 'Princess Jasmine, Happy 5th Birthday!', 26, 'My house', '88 Milbrook Road, Pakuranga', 2730091, 'My daughter 5 year old birthday, Time:1-4pm, 10pax', '2023-12-10'),
(24, 33, 'raj@b.com', '2023-12-01', 1, 1, 17, 23, 'Disney Princess, Happy Birthday Abela!', 27, 'Chipmunks Botany', '130 Rilla Road, Botany Downs', 5276325, 'My daughter 6th year old birthday, Time:1-5pm, 12pax', '2023-12-15'),
(25, 34, 'Do@hotmail.com', '2023-12-02', 1, 2, 13, 10, 'Happy 5th Birthday, Superman Jake!', 24, 'Moral Garden Villa', '165 Ronald Road, Henderson', 2721063, 'My son 5 year old birthday, Time:3-6pm, 9pax', '2023-12-17'),
(26, 36, 'Test@gmail.com', '2023-12-02', 4, 8, 16, 19, 'Happy 30th Anniversary, Shining Kate!', 32, 'My Home', '34 Richmond Road, Pakuranga', 5347924, 'My wife 30th Anniversary Dinner\r\nTime: 6-9pm\r\nNo of pax: 4pax', '2023-12-22'),
(36, 37, 'sambrash33@gmail.com', '2023-12-02', 1, 1, 1, 1, 'Happy Birthday, Dear Max!', 1, 'My house', '8 Ashton Drive, Manukau', 2733822, 'My son 8 year old birthday\r\nTime: 10-4pm\r\nBring extra giraffe decorations, as he loves this animal', '2023-12-23'),
(37, 2, 'john43@gmail.com', '2023-12-04', 4, 8, 14, 13, 'To My Sweetheart Gayle, Happy Anniversary!', 33, 'Friends home', '10 Bashford Drive, Manukau', 2728131, 'Our 45th Anniversary Dinner\r\nTime: 7-10pm\r\nMy wife loves lavender flowers, please bring more for the theme set up', '2024-01-27'),
(38, 7, 'ganeshan1000@hotmail.com', '2023-12-06', 1, 2, 13, 10, 'Happy Birthday, To My Son Harold!', 22, 'Chipmunks Remuera', '100 Stonehill Drive, Remuera', 5340013, 'My son 10 year old birthday\r\nTime: 3:30-7pm\r\nCan you bring some animal masks to surprise for my son and his friends?', '2024-01-12'),
(39, 8, 'boontan131@hotmail.com', '2023-12-06', 1, 3, 12, 8, 'Happy Birthday, Superhero John!', 28, 'Samson Garden Vila', '17 Mall Road, Pukekohe', 5353901, 'My 9year son birthday,\r\nTime: 2-7pm\r\nPlease surprise my son with one of your staff dressing up as spiderman', '2024-02-10'),
(41, 37, 'sambrash33@gmail.com', '2023-12-08', 1, 1, 6, 1, 'Happy Birthday, Dear Ella!', 1, 'My house', '17 Mail Road, Howick', 5241671, 'Daughter 10 year old birthday,\r\nTime: 1-5pm', '2024-01-20'),
(42, NULL, 'pp@pp.com', '2023-12-21', 1, 2, 4, 1, 'Happy Birthday, Dear Roge!', 4, 'My Home', '10 Markus Road, Howick', 5336278, 'Time: 2-6pm\r\nNo of pax: 10pax\r\n', '2024-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `eventfeedback`
--

CREATE TABLE `eventfeedback` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `bookingid` int(11) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `createdate` date DEFAULT NULL,
  `taste` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `booking` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `services` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `suggestions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventfeedback`
--

INSERT INTO `eventfeedback` (`id`, `userid`, `bookingid`, `email`, `createdate`, `taste`, `quality`, `booking`, `value`, `staff`, `services`, `experience`, `suggestions`) VALUES
(1, 1, 1, 'john43@gmail.com', '2023-10-28', 2, 2, 2, 2, 2, 2, 2, 'Thank you catering our event, the only suggestion is to improve your hummus and other dips as the guest complained the taste was a little bland and lacked flavouring.'),
(2, 2, 2, 'mary101@gmail.com', '2023-10-31', 3, 3, 2, 2, 3, 2, 2, 'It was a great event, and the catering food was delicious. The only thing is the staff need to be a little more attentive to the guests needs and be more responsive to some of the guests not clearing plates quick enough.'),
(3, 3, 3, 'roy1988@hotmail.com', '2023-11-01', 3, 3, 3, 3, 3, 3, 3, 'Thank you for catering our event, it was quite well put together. Some areas of improvement is the banana cake needs to be more aesthetically decorated as it look quite simple and not exciting. Staff need to be more quicker in responding to guests request and check decorations as some of them were not sticking together properly.'),
(4, 4, 4, 'ganeshan1000@hotmail.com', '2023-11-02', 2, 2, 2, 2, 3, 2, 2, 'It was a lovely occasion, I really like the food it was so good and nicely arranged in the event. One suggestion is the service staff need to look more enthusiastic and positive when they are serving the guests.'),
(5, 5, 5, 'boontan131@hotmail.com', '2023-11-07', 2, 2, 2, 2, 2, 2, 2, 'It was major success for the catering, and everything was really yummy and tasted so nice. For the theme, I suggest the decorations need to be more lively and there needs to be added decoration to enhance the user experience as it look too ordinary but overall good job!'),
(6, 6, 6, 'emilee22@gmail.com', '2023-11-14', 3, 3, 3, 3, 3, 3, 3, 'Thank you for your catering service. Overall feeling was everything was quite standard and there was nothing that really stood out. Need to work on food flavours and more exotic variations to keep the kids entertain as they found the food very generic looking.'),
(7, 7, 7, 'jchow101@hotmail.com', '2023-11-15', 3, 3, 3, 3, 3, 3, 3, 'The services was not too bad but there were some parts that I found were little stiff such as the Ariel theme. The decorations look a little outdated and not as fresh as I thought. The staff need to be more quicker at attending to the guests needs. Overall it was a good effort.'),
(8, 8, 8, 'jimwilliamson10@hotmail.com', '2023-11-16', 2, 2, 2, 2, 2, 2, 2, 'Well done with the catering, the food was to die for and everyone love the food thats all they could talk about. The gold theme needs to be worked on, maybe invest in more stylish fun gold decorations to create the ultimate gold theme party.'),
(9, 9, 9, 'annabelle40@hotmail.com', '2023-11-21', 2, 2, 2, 2, 2, 2, 2, 'It is a really good catering service and we really enjoy the food taste, can\'t fault anything. For the youthful flower theme, one thing you can do is add more different variety of flowers, so the guests can feel like they are in a garden environment setting.'),
(10, 10, 10, 'parshey120@hotmail.com', '2023-11-25', 2, 2, 2, 2, 1, 2, 2, 'Excellent catering, the food and service was exceptional. The theme for the animals were nicely done even with customise choices, I was really happy with this touch. Continue your great job!'),
(11, 11, 11, 'bataz1@hotmail.com', '2023-11-28', 3, 3, 3, 3, 3, 3, 3, 'Your service was alright but I felt the price was a little expensive and didn\'t offer much wow factor to the event.'),
(12, 12, 12, 'billiejay08@hotmail.com', '2023-11-28', 2, 2, 2, 2, 1, 2, 2, 'I was deeply impressed by the staff service going above and beyond to impress the guests with them wearing animal masks and really giving an exciting experience for the little ones. The fruit cake was not really decorated well and the fruit taste a little plain. Need to do a better job and make sure the fruitastic cake is looking professional.'),
(13, 13, 13, 'maison345@hotmail.com', '2023-11-29', 2, 2, 2, 2, 3, 2, 2, 'Overall, it was an eventful night and the food was prepared well. The taste was definitely the star of the show. I feel like the staff need to be train better to answer to guests more promptly, as one guest was left waiting for a while for someone to give them extra assistance.'),
(14, 14, 14, 'blackburnrover2@hotmail.com', '2023-12-01', 2, 2, 3, 2, 2, 2, 2, 'Thank you for your great catering service, but I feel like the banana cake was a little lacking in taste and decoration style. Also the food was little pricey but overall it was a good experience to have.'),
(15, 15, 15, 'jacksonnill34@hotmail.com', '2023-12-02', 2, 2, 2, 2, 2, 2, 2, 'I really enjoy the catering services and the guest did too. One area to work on is checking the flavour of the dips as the guests say it wasn\'t a food explosion in their mouths and they have had better dips before. Other than that, a pleasant experience.'),
(16, 16, 16, 'barryking10@hotmail.com', '2023-12-06', 1, 1, 1, 1, 2, 0, 1, 'Excellent catering, we were very happy with the food and the overall performance. Although one room of improvement is for the staff to be more positive and enthusiastic with serving the guests and attending to their requests in a quick response.'),
(17, 17, 17, 'mariannajoy142@hotmail.com', '2023-12-09', 2, 2, 2, 3, 2, 2, 2, 'I thought it was a good event and the catering was well executed. Although the decoration set up was a little stiff and didn\'t really pop out in the way the guests wanted it to be. The price did not match the theme presentation.'),
(18, 18, 18, 'heatherwhite101@hotmail.com', '2023-12-10', 2, 2, 2, 1, 2, 2, 2, 'Thank you for your catering service, it was a good event but the only hiccup I feel is the beach theme was way too overpriced for the limited amount of beach decorations and the surfboards would have been a real nice touch to match the high price. Please think about this in future events.'),
(19, 19, 19, 'natasha@gmail.com', '2023-12-04', 2, 2, 2, 2, 3, 2, 2, 'It was a lovely event and the food was really good\r\nThe only suggestion I would give is the staff need to be more attentive to the guests,\r\nas there were several complaints about slow service.'),
(20, 20, 20, 'puneet@gmail.com', '2023-12-04', 2, 2, 2, 2, 2, 2, 2, 'Excellent food options and the guests were so happy with the success of the event. One suggestion\r\nis to listen to the guests requests and understand what they want as some guests were having trouble\r\ngetting their request through to the staff.'),
(21, 21, 21, 'kk@kk.com', '2023-12-08', 2, 2, 2, 2, 3, 2, 2, 'The service was good but the staff could be better with helping the guests with their immediate needs and bringing out the cake earlier as there was a bit of a delay.'),
(22, 22, 22, 'pp@pp.com', '2023-12-10', 2, 2, 2, 2, 3, 2, 2, 'The service was really good but the staff could be better with their enthusiasm as some of the guests complained the staff looked uninterested.'),
(23, 23, 23, 'bran@a.com', '2023-12-11', 2, 2, 2, 2, 3, 2, 2, 'My only suggestion is that the food is more flavourful and the staff are more positive with their interactions.'),
(24, 24, 24, 'raj@b.com', '2023-12-16', 2, 2, 1, 1, 3, 3, 3, 'I thought it was a pleasant event with many highs with the food being incredibly delicious and the guests were super happy with the overall food quality. One suggestion is staff training for the staff to be more responsive to the guests and faster bringing out the cake.'),
(25, 25, 25, 'Do@hotmail.com', '2023-12-18', 1, 1, 3, 2, 3, 3, 2, 'Thank you for a wonderful event and the good food, everyone was very impress with the cake as it was the magic touch for the event. I think one suggestion is making sure the guests are always checked on and some of the guests felt the staff were not very attentive to their requests.'),
(26, 26, 26, 'Test@gmail.com', '2023-12-23', 3, 3, 3, 3, 3, 3, 3, 'My suggestion is to check the food flavouring as there were some dishes that were particularly bland and lack seasoning. The staff should be more light hearted in their service because there were a few guests complaining of the staff being too serious and stiff in their service.'),
(27, 27, 41, 'sambrash33@gmail.com', '2024-01-22', 2, 2, 2, 2, 3, 2, 2, 'It was a nice event with a lot of interesting taste of food but I think the staff need to be more vigilant with the guests needs and respond to their requests more quickly such as clearing dishes');

-- --------------------------------------------------------

--
-- Table structure for table `eventquestions`
--

CREATE TABLE `eventquestions` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contactno` int(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventquestions`
--

INSERT INTO `eventquestions` (`id`, `firstname`, `lastname`, `email`, `contactno`, `message`) VALUES
(1, 'Jake', 'Mathers', 'jakemathers31@hotmail.com', 5267181, 'I have a quick question, it is my sister\'s 24th birthday and she wants to do a barbie theme party. Is it possible to customise your pink theme to make it more of a barbie theme? Would you be able to incorporate Barbie decorations to create a more expansive pink theme set up? '),
(2, 'James', 'Pond', '134jamespond@hotmail.com', 5351198, 'I am very intrigued by your selection of catering packages. But I would like to ask as it is not specify in your website can you do large catering for your food choices for an event of 100pax or is it only designated to a maximum number that is not designed for large scale event sizes?'),
(3, 'Billy', 'Bucker', 'billybucker03@hotmail.com', 2734415, 'Hi, it seems your event selection is quite narrow in the sense that I have a conference function but would like to employ our catering services. Would it be possible to cater for a conference event of 30pax for a business function. Can we use your packages if the event is not listed in your website? Please let me know as soon as possible.'),
(4, 'Sarah', 'Monise', 'sarahmonise1010@hotmail.com', 2733271, 'I am big on throwing a fun birthday for my son who is 7 years old but the problem is he wants to not only have an animal wild theme party. He would like to request if it is possible for one of your staff to dress up as a lion from madagascar and put on a surprise show for him. Can you do this extra service to make the birthday more memorable?'),
(5, 'John', 'Jeck', 'john43@gmail.com', 5258837, 'Hi, my name is John. I have booked your catering services. Please can you arrive at least 2 hours earlier to discuss food set up and I would like more information about your mini sushi as my wife doesn\'t eat fish. Can you send me the sushi options for this choice? Thanks'),
(6, 'Mary', 'Pickles', 'mary101@gmail.com', 5334721, 'Mary here, quick question, for the cake option I have chosen, I just realised my son is a sucker for lollies but I thought it would be a neat idea to put the lollies secretly in the cake. Can you do this for my son? Please get back to me as soon as possible since he has no idea about my suggestion.'),
(7, 'Roy', 'Banter', 'roy1988@hotmail.com', 5251901, 'It is a pleasure to be able to book your services. My friend is quite loopy and I have an idea for the banana cake. Even though the banana cake is just the standard one, I was hoping if I could trouble you to make the shape of the banana cake as a \"monkey\". I am willing to pay extra, please contact me to discuss further details.'),
(8, 'Kathiravelu', 'Ganeshan', 'ganeshan1000@hotmail.com', 5345257, 'My name is Ganeshan, this is the first time using your services. I would like to ask for some details, regarding the banana cake. My wife is allergic to white sugar, is it possible to use a different sugar to make the cake edible for her. Also I want to be a romantic man and add some edible rose petals at the top of the cake around the happy birthday area, can you do this for me?'),
(9, 'Boon', 'Tan', 'boontan131@hotmail.com', 5352010, 'This is Boon. We are having a gender reveal for my lovely, and I am very excited but I feel like the gold theme is quite limited in decoration option. My wife is a huge fan of disco, so would it be alright to ask if you can go the extra mile and input some disco decoration to make her wonderful day? Please let me know as soon as possible.'),
(10, 'Emilee', 'Epics', 'emilee22@gmail.com', 5265318, 'Hi, just a quick news update. The time has changed from 11:30pm to 3:30pm, also there is a guest that is vegetarian. In your package B, can you make 5 mini vegetarian buns, for this selected guest?Are you able to do this? Please get back to me as soon as possible'),
(11, 'Johnny', 'Chow', 'jchow1019@hotmail.com', 5331687, 'Hi, my name is Johnny. For the ariel theme, is the ariel food goodies included within the theme set up price or this is additional cost? I have some urgent changes to the booking. My daughter has been feeling a little under the weather so the date will be changed to the 17/11/23. She would also like to remove the chocolate jaffa cake and change to triple chocolate platform cake. Please can you make these modifications immediately.'),
(12, 'Jim', 'Williamson', 'jimwilliamson10@hotmail.com', 5270090, 'Hi, I have ordered your services. Just a question, for the theme set up I have chosen being Gold theme, can you coordinate the catering cultery with gold style such as gold eating utensils and gold cups to customise the experience, and from some theme set up I have red there are mini goodies included. Why is there no mini goodies for this theme? Please let me know.'),
(13, 'Annabelle', 'Saunders', 'annabelle40@hotmail.com', 2735168, 'Hello, I have a quick question for the youthful flower theme, can you please let me know the type of flowers you have available. Also for the mini food goodies, am I able to customise the choices such as mini macacrons or is this additional cost involved?'),
(14, 'Parshey', 'Rujeet', 'parshay120@hotmail.com', 5254073, 'For the animal theme, I can\'t see many animals to choose from. Is it alright to customise animals for my son such as hippos, rhinos, panther etc? Let me know please'),
(15, 'Daisy', 'Lee', 'daisylee400@hotmail.com', 2735562, 'Hi, I am new here. Don\'t know much about your package options, but I am chinese oriented so can you do chinese style food for packages or is this only fixed option available. Just want to know.'),
(16, 'Bataz', 'Rodriguez', 'bataz1@hotmail.com', 5338272, 'Hello everybody, this is a nice service to see. I have a burning question to ask why is there so few option of anniversary theme set up compare to the other event types. I am just very curious about this.'),
(17, 'Billie', 'Jay', 'billiejay08@hotmail.com', 5241852, 'Hi, I see the farm bird theme for my son and I am interested with this option. I have to ask, do you only decorating or can you make my son day by wearing animal masks to heighten the birthday experience for him. Would this cost extra for this service option? Let me know as soon as possible'),
(18, 'Hulk', 'Hogan', 'hulkhoganmr1@hotmail.com', 2734498, 'Hi, just visiting your website, I notice you have mainly a standard selection of drinks. My query is most adults like to indulge in cocktails and mocktail selection, why do you not provide these added drink types? '),
(19, 'Maison', 'Panu', 'maison345@hotmail.com', 5375127, 'I have ordered your services. I\'m just a little confuse, other websites I see have videos of the event experience, why doesn\'t your website show these features to enable the user to see the immersive side of your company. It is just all images and it seems a little too simple and static in my opinion.'),
(20, 'Jarrod', 'Chrome', 'blackburnrover2@hotmail.com', 5352810, 'In your website, it shows the catering options but not many photos to match the food categories. For my banana cake order, can you add sparklers for the cake and how much would it cost for this added feature?'),
(21, 'Jackson', 'Nill', 'jacksonnill34@hotmail.com', 2737166, 'Why do some theme set up have mini food goodies included but other themes do not? I don\'t understand this logic'),
(22, 'Barry', 'King', 'barryking10@hotmail.com', 5286018, 'Hello, it is barry. For the anniversary package selection, it is very limited. There should be more to choose from or it seems like we are force to pick from a small choices.'),
(23, 'Brendan', 'Chen', 'brendanro@hotmail.com', 5367721, 'I have a query, why for the theme set up section there is disney minnie but there is no disney mickey mouse. It seems to defeat the whole purpose of having a disney theme, just want to ask.'),
(24, 'Rachel', 'Chava', 'rachelch4va@hotmail.com', 5338116, 'I have stumbled across your website to look for potential event places. But in your website there is no venue or location option, can I ask why you don\'t have this service type as it is very important for guests to be able to choose their location and place at the start? Otherwise the content is very nice'),
(25, 'Marianna', 'Joy', 'mariannajoy142@hotmail.com', 5353281, 'Hello, I have booked your services. The reason I didn\'t choose your cake choices was they were all standard and there was no customise option available to cater to specified guests. Why do you not have this option to choose from?'),
(26, 'Heather', 'White', 'heatherwhite101@hotmail.com', 5350067, 'Hi, my name is Heather White. I have a query about the beach theme. I think the price you have put up is too expensive as it doesn\'t include many beach style elements like surfboards and other beachy items. Can we please discuss more in adding more beach decorations to compensate for the high price? Please contact me as soon as possible'),
(27, 'Natasha ', 'C', 'natasha@gmail.com', 2735989, 'I want to ask you have catering, cakes and birthday themes but you don\'t seem to have drinks as an option, why is that?'),
(28, 'Puneet', 'Puneet', 'puneet@gmail.com', 2730154, 'I have a quick question, your company does only small scale events, would it make an exception to cater to a 50pax event. Are you able to expand your resources and try a larger scale event?'),
(29, 'Bran', 'Chan', 'bran@a.com', 2731253, 'Do you have any chinese style catering packages available for a chinese guest?'),
(30, 'Jacob', 'Strew', 'jacobstrew99@gmail.com', 2735117, 'I like the idea of birthday themes rather than individual decorations. My lovely daughter is obsess with Frozen the movies, is there any chance you can do a Frozen birthday theme?'),
(31, 'James', 'Taylor', 'jamestaylorrocks@hotmail.com', 5371890, 'You have some interesting menu packages but you don\'t have malaysian or south east asian dishes, as I love these flavours. Can you add these dishes to your menu or is this only fixed menu packages?'),
(32, 'Raj', 'Vian', 'raj@b.com', 5276325, 'I have seen any many event websites, they provide the location and venue options. But you don\'t have this option, this is very incovenient for new users wanting to get the whole event experience. Very shocked.'),
(33, 'Kelly', 'Springs', 'ksprings0111@hotmail.com', 2737228, 'Alot of event websites should provide the services photography, music and lighting but you don\'t have this available. Your services are too limited and don\'t entice the user to make a booking, thats the harsh reality.'),
(34, 'Doraa', 'Do', 'Do@hotmail.com', 2721063, 'Every celebration should have drinks to choose from. In your services this is excluded, what is the reason behind this? No sparkling is no celebration.'),
(35, 'Test', 'Test', 'Test@gmail.com', 5347924, 'For your services in the birthday theme selection, you have spiderman which is cool but there are other superheroes that kids love to see. Will we see those superheroes such as superman, wonderwoman, ironman in the future?');

-- --------------------------------------------------------

--
-- Table structure for table `eventtype`
--

CREATE TABLE `eventtype` (
  `id` int(11) NOT NULL,
  `eventtypeid` int(2) NOT NULL,
  `eventname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventtype`
--

INSERT INTO `eventtype` (`id`, `eventtypeid`, `eventname`) VALUES
(1, 1, 'Kid\'s Birthday'),
(2, 2, 'Adult\'s Birthday'),
(3, 3, 'Gender Reveal'),
(4, 4, 'Anniversary');

-- --------------------------------------------------------

--
-- Table structure for table `eventusers`
--

CREATE TABLE `eventusers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `contactno` varchar(8) NOT NULL,
  `password` varchar(100) NOT NULL,
  `verifiedemail` varchar(5) DEFAULT NULL,
  `active` varchar(5) DEFAULT NULL,
  `registeredon` timestamp NULL DEFAULT NULL,
  `verifiedon` timestamp(6) NULL DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventusers`
--

INSERT INTO `eventusers` (`id`, `firstname`, `lastname`, `email`, `username`, `contactno`, `password`, `verifiedemail`, `active`, `registeredon`, `verifiedon`, `usertype`) VALUES
(1, 'Sachini ', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-01 19:46:00', '2023-10-02 06:20:00.000000', 'Admin'),
(2, 'John', 'Jeck', 'john43@gmail.com', 'JJeck1097ES3T', '5258837', 'J0hn4334', 'Yes', 'Yes', '2023-10-01 22:47:00', '2023-10-02 20:51:00.000000', 'User '),
(3, 'Mary', 'Pickles', 'mary101@gmail.com', '79MPicklesD1pI', '5334721', '731m4ry', 'Yes', 'Yes', '2023-10-02 03:18:00', '2023-10-02 22:34:00.000000', 'User '),
(4, 'Sachini ', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-02 20:35:00', '2023-10-03 03:07:00.000000', 'Admin'),
(5, 'Roy', 'Banter', 'roy1988@hotmail.com', 'RoyBN4Ther39S', '5251091', '8ig8oyboy', 'Yes', 'Yes', '2023-10-03 21:54:00', '2023-10-04 20:26:00.000000', 'User'),
(6, 'Sachini ', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-03 19:30:00', '2023-10-04 02:18:00.000000', 'Admin'),
(7, 'Kathiravelu', 'Ganeshan', 'ganeshan1000@hotmail.com', 'KvGB055nE142O', '5345257', 'test1234', 'Yes', 'Yes', '2023-10-03 20:33:00', '2023-10-04 09:25:00.000000', 'User'),
(8, 'Boon', 'Tan', 'boontan131@hotmail.com', 'TB00n2J76FR', '5352010', 'test1243', 'Yes', 'Yes', '2023-10-03 21:11:00', '2023-10-04 09:55:00.000000', 'User'),
(9, 'Emilee', 'Epics', 'emilee22@gmail.com', '3E3PEs550Ei', '5265318', 'test1324', 'Yes', 'Yes', '2023-10-03 23:48:00', '2023-10-04 20:06:00.000000', 'User'),
(10, 'Sachini ', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-04 19:26:00', '2023-10-05 04:45:00.000000', 'Admin'),
(11, 'Johnny', 'Chow', 'jchow1019@hotmail.com', 'JcH034wiUm98', '5331687', 'test1342', 'Yes', 'Yes', '2023-10-04 21:01:00', '2023-10-05 10:54:00.000000', 'User'),
(12, 'Jim', 'Williamson', 'jimwilliamson10@hotmail.com', 'J1mW98nNERT5', '5270090', 'test1432', 'Yes', 'Yes', '2023-10-04 23:08:00', '2023-10-05 19:48:00.000000', 'User'),
(13, 'Annabelle', 'Saunders', 'annabelle40@hotmail.com', 'A5U43nTI0pe11', '2735168', 'test1423', 'Yes', 'Yes', '2023-10-05 02:51:00', '2023-10-05 22:06:00.000000', 'User'),
(14, 'Sachini', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-05 19:44:00', '2023-10-06 03:54:00.000000', 'Admin'),
(15, 'Parshey', 'Rujeet', 'parshey120@hotmail.com', 'P5risu82Ki8n', '5254073', 'test2134', 'Yes', 'Yes', '2023-10-05 22:51:00', '2023-10-06 19:37:00.000000', 'User'),
(16, 'Bataz', 'Rodriguez', 'bataz1@hotmail.com', 'Bata98SBerb3', '5338272', 'test2143', 'Yes', 'Yes', '2023-10-06 01:36:00', '2023-10-06 22:43:00.000000', 'User'),
(17, 'Billie', 'Jay', 'billiejay08@hotmail.com', 'Bui09X3120B', '5241852', 'test2341', 'Yes', 'Yes', '2023-10-06 03:15:00', '2023-10-07 00:14:00.000000', 'User'),
(18, 'Sachini ', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-06 19:54:00', '2023-10-07 03:24:00.000000', 'Admin'),
(19, 'Maison', 'Panu', 'maison345@hotmail.com', 'mM8120piN7', '5315127', 'test2314', 'Yes', 'Yes', '2023-10-06 21:03:00', '2023-10-07 10:56:00.000000', 'User'),
(20, 'Jarrod', 'Chrome', 'blackburnrover2@hotmail.com', 'JbB503euJs', '5352810', 'test2413', 'Yes', 'Yes', '2023-10-06 23:43:00', '2023-10-07 21:02:00.000000', 'User'),
(21, 'Jackson', 'Nill', 'jacksonnill34@hotmail.com', 'Ja5kS0oonon', '2737166', 'test2431', 'Yes', 'Yes', '2023-10-07 03:13:00', '2023-10-08 01:06:01.000000', 'User'),
(22, 'Sachini ', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-07 19:52:00', '2023-10-08 03:08:00.000000', 'Admin'),
(23, 'Barry', 'King', 'barryking10@hotmail.com', 'B482Rnvuy', '5286018', 'test3124', 'Yes', 'Yes', '2023-10-07 23:04:00', '2023-10-08 19:33:00.000000', 'User'),
(24, 'Marianna ', 'Joy', 'mariannajoy142@hotmail.com', 'maR41n80mvf', '5353280', 'test3142', 'Yes', 'Yes', '2023-10-08 02:27:00', '2023-10-08 22:39:00.000000', 'User'),
(25, 'Sachini ', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-10-08 19:47:00', '2023-10-09 03:27:00.000000', 'Admin'),
(26, 'Heather', 'White', 'heatherwhite101@hotmail.com', 'hea5783ceReA', '5350067', 'test3421', 'Yes', 'Yes', '2023-10-09 02:30:00', '2023-10-09 20:49:00.000000', 'User'),
(27, 'Sachini', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-11-09 19:32:00', '2023-11-11 02:23:00.000000', 'Admin'),
(28, 'Natasha ', 'Clarke', 'natasha@gmail.com', 'natashaC', '2735989', 'natashaC', 'Yes', 'Yes', '2023-11-09 21:04:00', '2023-11-11 00:58:00.000000', 'User'),
(29, 'Puneet', 'Puneet', 'puneet@gmail.com', 'p4523MPT', '2730154', 'puneetp', 'Yes', 'Yes', '2023-11-09 21:15:00', '2023-11-10 20:05:00.000000', 'User'),
(30, 'kk', 'kk', 'kk@kk.com', 'kk0Ne52', '5337624', 'kk', 'Yes', 'Yes', '2023-11-09 21:32:00', '2023-11-10 20:20:00.000000', 'User'),
(31, 'pp', 'pp', 'pp@pp.com', 'QS3105pp', '5352927', 'pp', 'Yes', 'Yes', '2023-11-09 21:48:00', '2023-11-10 20:38:00.000000', 'User'),
(32, 'Bran', 'Chan', 'bran@a.com', 'B88cYriue7', '2730091', '233233', 'Yes', 'Yes', '2023-11-09 22:24:00', '2023-11-10 21:46:00.000000', 'User'),
(33, 'Raj', 'Vian', 'raj@b.com', '87BNMuyr310', '5276325', '345543', 'Yes', 'Yes', '2023-11-10 02:33:00', '2023-11-11 00:17:00.000000', 'User'),
(34, 'Doraa', 'Do', 'Do@hotmail.com', 'Dor4Ann5e2', '2721063', 'test1111', 'Yes', 'Yes', '2023-11-10 03:30:00', '2023-11-11 01:53:00.000000', 'User'),
(35, 'Sachini', 'Waduge', 'admin0108774@hotmail.com', 'SachiniWad5N1D55', '', '379125admin', 'Yes', 'Yes', '2023-11-10 19:33:00', '2023-11-11 02:39:00.000000', 'Admin'),
(36, 'Test', 'Test', 'Test@gmail.com', 'Test5T4TmPn', '5347924', 'test3212', 'Yes', 'Yes', '2023-11-10 21:50:00', '2023-11-11 20:21:00.000000', 'User'),
(37, 'Sam', 'Brash', 'sambrash33@gmail.com', 'Sa4mB71229', '2733822', 'S4mm4e', 'Yes', 'Yes', '2023-11-10 22:14:00', '2023-11-11 20:46:00.000000', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `servicetypeid` int(11) NOT NULL,
  `categoryname` varchar(20) NOT NULL,
  `productname` varchar(80) NOT NULL,
  `pricelist` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `servicetypeid`, `categoryname`, `productname`, `pricelist`) VALUES
(1, 1, 'Catering', 'Menu 1', 85),
(2, 1, 'Catering', 'Menu 2', 95),
(3, 1, 'Catering', 'Menu 3', 105),
(4, 1, 'Catering', 'Menu 4', 110),
(5, 1, 'Catering', 'Menu 5', 95),
(6, 1, 'Catering', 'Menu 6', 90),
(7, 1, 'Catering', 'Menu 7', 130),
(8, 1, 'Catering', 'Menu 8', 120),
(9, 1, 'Catering', 'Menu 9', 110),
(10, 2, 'Cakes', 'Triple Chocolate Platform Cake', 0),
(11, 2, 'Cakes', 'Chocolate Jaffa Cake', 0),
(12, 2, 'Cakes', 'Hokey Pokey Chocolate Cake', 0),
(13, 2, 'Cakes', 'Fruitastic Cake', 0),
(14, 2, 'Cakes', 'Red Velvet Cake', 0),
(15, 2, 'Cakes', 'Banana Cake', 0),
(16, 2, 'Cakes', 'Classic Carrot Cake', 0),
(17, 2, 'Cakes', 'Strawberry Cake', 0),
(18, 2, 'Cakes', 'Princess Cake', 0),
(19, 2, 'Cakes', 'Berry Forest Cake', 0),
(20, 2, 'Cakes', 'Cookies and Cream Cake', 0),
(21, 2, 'Cakes', 'Lemon Menrigue Cake', 0),
(22, 3, 'Birthday Theme', 'Animal Theme', 60),
(23, 3, 'Birthday Theme', 'Alternative Animal Theme', 50),
(24, 3, 'Birthday Theme', 'Farm Bird Theme', 70),
(25, 3, 'Birthday Theme', 'Beach Theme', 80),
(26, 3, 'Birthday Theme', 'Ariel Theme', 85),
(27, 3, 'Birthday Theme', 'Disney Minnie Theme', 90),
(28, 3, 'Birthday Theme', 'Spiderman Theme', 95),
(29, 3, 'Birthday Theme', 'Soccer Theme', 95),
(30, 3, 'Birthday Theme', 'Circus Theme', 100),
(31, 3, 'Birthday Theme', 'Purple Theme', 45),
(32, 3, 'Birthday Theme', 'Gold Theme', 45),
(33, 3, 'Birthday Theme', 'Youthful Flower Theme', 85),
(34, 3, 'Birthday Theme', 'Pink Theme', 90),
(35, 3, 'Birthday Theme', 'Alternative Pink Theme', 85);

-- --------------------------------------------------------

--
-- Table structure for table `servicetype`
--

CREATE TABLE `servicetype` (
  `id` int(11) NOT NULL,
  `servicetypeid` int(11) NOT NULL,
  `servicename` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicetype`
--

INSERT INTO `servicetype` (`id`, `servicetypeid`, `servicename`) VALUES
(1, 1, 'Catering'),
(2, 2, 'Cakes'),
(3, 3, 'Birthday Theme Set Up');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cakedetailtype`
--
ALTER TABLE `cakedetailtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cakecategoryid` (`cakecategoryid`);

--
-- Indexes for table `eventbookings`
--
ALTER TABLE `eventbookings`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `userid` (`email`),
  ADD KEY `userid_2` (`userid`),
  ADD KEY `cakeid` (`cakeid`,`themeid`),
  ADD KEY `eventtype` (`eventtype`),
  ADD KEY `cateringid` (`cateringid`),
  ADD KEY `themeid` (`themeid`),
  ADD KEY `cakedetailtypeid` (`cakedetailtypeid`);

--
-- Indexes for table `eventfeedback`
--
ALTER TABLE `eventfeedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingid` (`bookingid`);

--
-- Indexes for table `eventquestions`
--
ALTER TABLE `eventquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventtype`
--
ALTER TABLE `eventtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventusers`
--
ALTER TABLE `eventusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryname`),
  ADD KEY `servicetypeid` (`servicetypeid`);

--
-- Indexes for table `servicetype`
--
ALTER TABLE `servicetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cakedetailtype`
--
ALTER TABLE `cakedetailtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `eventbookings`
--
ALTER TABLE `eventbookings`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `eventfeedback`
--
ALTER TABLE `eventfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `eventquestions`
--
ALTER TABLE `eventquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `eventtype`
--
ALTER TABLE `eventtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eventusers`
--
ALTER TABLE `eventusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `servicetype`
--
ALTER TABLE `servicetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cakedetailtype`
--
ALTER TABLE `cakedetailtype`
  ADD CONSTRAINT `cakedetailtype_ibfk_1` FOREIGN KEY (`cakecategoryid`) REFERENCES `products` (`id`);

--
-- Constraints for table `eventbookings`
--
ALTER TABLE `eventbookings`
  ADD CONSTRAINT `eventbookings_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `eventusers` (`id`),
  ADD CONSTRAINT `eventbookings_ibfk_2` FOREIGN KEY (`eventtype`) REFERENCES `eventtype` (`id`),
  ADD CONSTRAINT `eventbookings_ibfk_3` FOREIGN KEY (`cakeid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `eventbookings_ibfk_4` FOREIGN KEY (`cateringid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `eventbookings_ibfk_5` FOREIGN KEY (`themeid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `eventbookings_ibfk_6` FOREIGN KEY (`cakedetailtypeid`) REFERENCES `cakedetailtype` (`id`);

--
-- Constraints for table `eventfeedback`
--
ALTER TABLE `eventfeedback`
  ADD CONSTRAINT `eventfeedback_ibfk_1` FOREIGN KEY (`bookingid`) REFERENCES `eventbookings` (`bookingid`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`servicetypeid`) REFERENCES `servicetype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
