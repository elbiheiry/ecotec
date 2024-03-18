-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2021 at 12:31 PM
-- Server version: 10.2.41-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecotecgroup_ecotec`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name1` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name2` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name3` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `heading`, `name1`, `name2`, `name3`, `brief1`, `brief2`, `brief3`, `image1`, `image2`, `created_at`, `updated_at`) VALUES
(1, 'EMERGING FROM A CONGLOMERATE BETWEEN 3 LARGE ENTITIES SPECIALIZING IN THE REAL ESTATE INVESTMENT SECTORS', 'WEISER', 'ECOTEC', 'MAALEM COMPANY', 'one of the largest engineering offices in Egypt, the owner of the design and construction of the largest tourist resorts in Sharm El Sheikh, Hurghada and Marsa Alam.', 'a company specializing in project implementation, with branches in Saudi Arabia and the UAE, and partners with European and German companies, with mega projects in Europe, the Middle East and the Gulf countries.', 'one of the largest real estate companies in the Fifth Settlement with a portfolio that exceeded 100 projects in New Cairo and the Administrative Capital.', 'rIFF7wyQS13s55GEuuw2Ml4jll0XddESxc83CgJ2.jpg', 'j0vmbl5YuwPSfTrPetyQwjrJPPU0fuVVoupZCfX0.jpg', NULL, '2021-04-22 14:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `about_sections`
--

CREATE TABLE `about_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title1` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sections`
--

INSERT INTO `about_sections` (`id`, `title`, `title1`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ECOTEC', 'Developments', 'FOR REAL ESTATE DEVELOPMENT IS INTRODUCING AN UNPRECEDENTED TECHNOLOGY IN THE REAL ESTATE MARKET IN THE NEW CAPITAL', 'cJwYUJH4K4EcvwRLHL2EbAgiqKYo5uFYeAxv3Az8.jpg', '2021-04-24 22:59:02', '2021-04-25 22:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `email`, `position`, `cv`, `created_at`, `updated_at`) VALUES
(1, 'mostafa samy', 'm.elbiheiry@brandbourne.com', 'CEO', 'XrBbPTieEauPxOwVWfDAHUow7oNdr8z4BkdGFd8Y.docx', '2021-04-22 10:25:06', '2021-04-22 10:25:06'),
(2, 'mohamed elbiheiry', 'elbiheiry2@gmail.com', 'Web developer', 'RvwiRGsWCU1Xnfvomvx9b5Knxw1TRtYSrfK48fGT.docx', '2021-04-22 10:25:27', '2021-04-22 10:25:27'),
(3, 'mostafa samy', 'm.elbiheiry@brandbourne.com', 'CEO', 'NEYO8dCk2UDriECAgXS7ir7JzeOAR3zIAxkcEGLm.docx', '2021-04-22 11:19:35', '2021-04-22 11:19:35'),
(4, 'mostafa samy', 'm.elbiheiry@brandbourne.com', 'CEO', 'LbcJTcBXR8I0DcBcYRXplReTeh1ROgnyEJQ1VYty.docx', '2021-04-22 11:20:42', '2021-04-22 11:20:42'),
(5, 'mostafa samy', 'm.elbiheiry@brandbourne.com', 'CEO', 'CjlE2yH5ThDy3sW07ZCsQGemkIz6jO7UP27xPIko.docx', '2021-04-22 11:21:00', '2021-04-22 11:21:00'),
(6, 'mostafa samy', 'm.elbiheiry@brandbourne.com', 'CEO', 'zsS3fBwrPOGJnwbtCOVVSMvz3x00aItN7nkOzrdH.docx', '2021-04-22 11:21:57', '2021-04-22 11:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultants`
--

INSERT INTO `consultants` (`id`, `name1`, `name2`, `description1`, `description2`, `created_at`, `updated_at`) VALUES
(1, '1- Hafez Consultants (HC)', '2- Arch2', 'With its distinguished teams of engineers and architects, Hafez Consultants (HC) is acknowledged for urban planning, architectural design, interior and engineering design. HC design house expertise is based on a long history of successfully completed projects where it has succeeded in dealing with different projects domestically and internationally including residential, mixed-use, public, corporate and office buildings, educational and cultural projects, hotels and recreational resorts, industrial projects, religious projects. , Commercial and more).', 'Considered a leading engineering consultancy in Germany for more than 25 years. The group was founded by the engineer Christian Schnitzer in Munich, Germany. The company is known for its quality design in the areas of planning, research and development, healthcare unit services, investment, administrative and educational buildings, housing, culture and entertainment.Arch2lab is known for its inspiring impact on society, such as the Seibersdorf laboratories of the International Atomic Energy Agency in Vienna, the Dubai Police headquarters building, forensic research, and the Wacker laboratories in Munich, in addition to many other projects that have reached fifty projects in the world with investments exceeding the barrier of 800 million euros.', '2021-04-25 02:04:53', '2021-05-23 19:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'GERMAN RECREATION CENTER AND SPA', 'A world of luxury unfolds ahead where after a busy business day, comes our German Recreation Center and Spa that will open your eyes to new horizons where you can relax your mind, body and soul.', 'UOpINy5zxqBuiRMilsh6mCAPAkbkkcaJrCayCaiO.png', '2021-04-25 00:00:46', '2021-04-25 00:00:46'),
(3, 'FOOD AND BEVERAGE AREA', 'Rich in world- acclaimed food and beverage outlets, ParkView Offer you a wide range of exclusive services and break areas with just a walking distance from your office', 'LHKl2fnS4vU0Otw7sKA4fHTwIqePuHGKArcvKLHF.png', '2021-04-25 00:01:11', '2021-04-25 00:01:55'),
(4, 'PANORAMIC ELEVATOR', 'Enjoy the uninterrupted horizon of the Green River blended with every sky shade throughout your day.', 'AE2YIGH9l2nJDaLS07bgkDxXDsC8e3Y3xQWSLQe9.png', '2021-04-25 00:02:18', '2021-04-25 00:02:18'),
(5, 'UNDERGROUND PARKING', 'for your daily activities as well, where the 3 storey underground parking can accommodate up to 180 cars.', '7FlogvYd68EjNtdmDbsaOfnohwzGP8jEKah19USk.png', '2021-04-25 00:02:36', '2021-04-25 00:02:36'),
(6, 'KIDS AREA', 'Putting our people in the heart of the design, tenants and owners can enjoy an undisturbed business experience thanks to the Kids’ area.', 'ljnTQtM1vkDn9oLu7h8NbrTyrMBdEfPjE0xPdfER.png', '2021-04-25 00:02:54', '2021-04-25 00:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, 'PRIMARY DATA CENTER', 'E6fECxLWQg5LSiX7nu8KpL2JlVeUxBbamxwburfr.png', '2021-04-24 21:54:15', '2021-04-24 21:54:15'),
(3, 'ACCESS POINT', 'vVX74dSYV0R9fXDk0fDPWKyaLvMkP2QgUfQeV8PA.png', '2021-04-24 21:54:25', '2021-04-24 21:54:25'),
(4, 'BUSINESS COMMUNICATION CENTER', 'inwHwWXNBbMccit5MJp9SZP5R91UDRR1ROnbp6a1.png', '2021-04-24 21:54:36', '2021-04-24 21:54:36'),
(5, 'KIDS AREA', 'YHVVrL0LNTmVcOSbMzsu4cjqYQOVhsahRMDXPqFu.png', '2021-04-24 21:54:49', '2021-04-24 21:54:49'),
(6, 'UNDERGROUND PARKING', 'UR2M22rJHuwwDTfmaHAcJpiiipCx6iPwvaDt0IdP.png', '2021-04-24 21:55:03', '2021-04-24 21:55:03'),
(7, 'PANORAMIC ELEVATOR', '0sr5aNCT8knlRifkU9r16U9zEaQjx5ShXjMQHxQQ.png', '2021-04-24 21:55:14', '2021-04-24 21:55:14'),
(8, 'FOOD AND BEVERAGE AREA', 'DqBwT9oyl2ksnjCH4siLTGJ5eeEw4m7ToL05z1Xd.png', '2021-04-24 21:55:26', '2021-04-24 21:55:36'),
(9, 'GERMAN RECREATION CENTER AND SPA', 'Z4SsH74nqc7jSCDQXU4vXKSKX5eKWb6NmK1dubm1.png', '2021-04-24 21:55:52', '2021-04-24 21:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `feature_sections`
--

CREATE TABLE `feature_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_sections`
--

INSERT INTO `feature_sections` (`id`, `title`, `image1`, `image2`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Our Experience Has Exceeded The Real Estate Market Into The Technological Arena', 'tURzGE2XCnEevWvqwGuDBbOhFYioBlP07LAO4pNH.jpg', 'iaAPceTWSudSPDamR4GQquffRlkd2t2HsdB8iX18.jpg', 'Not only is the innovation reflected in the design but also in the construction technology implemented where we have relied on German construction technology, making it the first project in New Capital with German standards in the new capital making ParkView the first Egyptian-German cooperation in New Capital. Highlighting on originality, we have partnered with Arc2lab Engineering, with its long business presence in Germany, the Middle East, Africa and the Gulf countries.', '2021-04-24 23:24:34', '2021-04-24 21:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'p55eeeh4HjvcSMzg6toemR9cLz9oiX9Spw9PXqTJ.jpg', '2021-04-24 23:11:10', '2021-04-24 23:11:10'),
(4, 'xD3rQn32fjVM2vICL9xkEiolHEf43h5MznKljonw.jpg', '2021-04-24 23:12:44', '2021-04-24 23:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ecotecgroup.net - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ecotecgroup.net, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-04-22 18:21:23', '2021-04-22 18:21:23'),
(2, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Instead, congrats', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with ecotecgroup.net definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out ecotecgroup.net.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-04-24 03:18:46', '2021-04-24 03:18:46'),
(3, 'Den', 'info@hostdomains.com', '+12548593423', 'ATTENTION', 'TERMINATION OF DOMAIN ecotecgroup.net\r\nInvoice#: 481353\r\nDate: 2021-04-25\r\n\r\nIMMEDIATE ATTENTION REGARDING YOUR DOMAIN ecotecgroup.net IS ABSOLUTLY NECESSARY\r\n\r\nTERMINATION OF YOUR DOMAIN ecotecgroup.net WILL BE COMPLETED WITHIN 24 HOURS\r\n\r\nYour payment for the renewal of your domain ecotecgroup.net has not received yet\r\n\r\nWe have tried to reach you by phone several times, to inform you regarding the TERMINATION of your domain ecotecgroup.net\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://checkoutdomainsite.ga/?n=ecotecgroup.net&r=a&t=1619263918&p=v13\r\n\r\nIF WE DO NOT RECEIVE YOUR PAYMENT WITHIN 24 HOURS, YOUR DOMAIN ecotecgroup.net WILL BE TERMINATED!\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://checkoutdomainsite.ga/?n=ecotecgroup.net&r=a&t=1619263918&p=v13\r\n\r\nYOUR IMMEDIATE ATTENTION IS ABSOLUTELY NECESSARY IN ORDER TO KEEP YOUR DOMAIN ecotecgroup.net\r\n\r\nThe submission notification ecotecgroup.net will EXPIRE WITHIN 24 HOURS after reception of this email', '2021-04-24 09:33:41', '2021-04-24 09:33:41'),
(4, 'JamesKat', 'no-replyviomy@gmail.com', '82272415777', 'Want more customers for your business?', 'Hi!  ecotecgroup.net \r\n \r\nDo you know the best way to state your merchandise or services? Sending messages using contact forms will allow you to simply enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that may be sent through it will end up within the mailbox that is supposed for such messages. Causing messages using Contact forms is not blocked by mail systems, which means it\'s sure to reach the client. You will be ready to send your supply to potential customers who were previously unavailable because of spam filters. \r\nWe offer you to test our service for gratis. We will send up to 50,000 message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis offer is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2021-05-06 12:37:41', '2021-05-06 12:37:41'),
(5, 'Mike Gustman', 'no-reply@google.com', '87244615776', 'cheap monthly SEO plans', 'Greetings \r\n \r\nI have just took an in depth look on your  ecotecgroup.net for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Gustman\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-05-11 05:24:34', '2021-05-11 05:24:34'),
(6, 'Mike Sherlock', 'no-replyacacy@gmail.com', '83562688583', 'Local SEO for more business', 'Greetings \r\n \r\nI have just took a look on your SEO for  ecotecgroup.net for its Local SEO Trend and seen that your website could use a boost. \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nStart increasing your local visibility with us, today! \r\n \r\nregards \r\nMike Sherlock\r\n \r\nSpeed SEO Digital Agency \r\nsupport@speed-seo.net', '2021-05-11 23:08:55', '2021-05-11 23:08:55'),
(7, 'Mike Faber', 'see-email-in-message@monkeydigital.co', '86561283796', 'Increase Domain Strength for ecotecgroup.net', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your ecotecgroup.net website? \r\nHaving a high DA score, always helps \r\n \r\nGet your ecotecgroup.net to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-DR50-UR70/ \r\n \r\n \r\nthank you \r\nMike Faber\r\n \r\nsupport@monkeydigital.co', '2021-05-12 11:58:44', '2021-05-12 11:58:44'),
(8, 'Mazlan Selvi', 'no-replyei@gmail.com', '81613929186', 'Please I need your urgent response', 'Dear Friend, \r\n \r\nMy names are Mr. Mezlan Selvi, a lawyer base in Kuala Lumpur - Malaysia. I have previously sent you an email regarding a transaction of US$13.5 Million left behind by my late client before his tragic death but no response from you. \r\n \r\nHowever, I am contacting you once again with strong believe that you will work /partner with me to execute this business transaction in good faith. Please if you are interested in proceeding with me, kindly respond to me via my private email mselvi@ponnusamylawassociates-my.com for more detailed information. \r\n \r\nAs a matter of fact, this transaction is 100% risk free and I look forward to your acknowledgement. \r\n \r\nRegards, \r\nMr. Mazlan Selvi \r\nEmail: mselvi@ponnusamylawassociates-my.com', '2021-05-13 11:03:40', '2021-05-13 11:03:40'),
(9, 'Den', 'info@orderdomains.com', '+16898593423', 'ATTENTION', 'DOMAIN ecotecgroup.net IMMEDIATE TERMINATION\r\nInvoice#: 576833\r\nDate: 2021-05-15\r\n\r\nINSTANT ATTENTION REQUIRED IN REGARDS TO YOUR DOMAIN ecotecgroup.net\r\n\r\nYOUR DOMAIN ecotecgroup.net WILL BE TERMINATED WITHIN 12 HOURS\r\n\r\nWe have not received your payment for the renewal of your domain ecotecgroup.net\r\n\r\nWe have tried to reach you by phone several times, to inform you in regards of the TERMINATION of your domain ecotecgroup.net\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://getthosedomainsnow.ga/?n=ecotecgroup.net&r=a&t=1621021807&p=v8\r\n\r\nIF WE DO NOT RECEIVE YOUR PAYMENT WITHIN 12 HOURS, YOUR DOMAIN ecotecgroup.net WILL BE TERMINATED!\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://getthosedomainsnow.ga/?n=ecotecgroup.net&r=a&t=1621021807&p=v8\r\n\r\nYOUR IMMEDIATE ATTENTION IS ABSOLUTELY NECESSARY IN ORDER TO KEEP YOUR DOMAIN ecotecgroup.net\r\n\r\nThis important notification for ecotecgroup.net will EXPIRE WITHIN 12 HOURS after you have received this email!', '2021-05-15 02:50:11', '2021-05-15 02:50:11'),
(10, 'Yahoo', 'press@yahoo.com', '82917588219', 'Most profitable cryptocurrency miners released', 'Most profitable cryptocurrency miners has been released : \r\nDBT Miner: $7,500 (Bitcoin), $13,000 (Litecoin), $13,000 (Ethereum), and $15,000 (Monero) \r\n \r\nGBT Miner: $22,500 (Bitcoin), $39,000 (Litecoin), $37,000 (Ethereum), and $45,000 (Monero) \r\nRead more here : \r\nhttps://www.yahoo.com/now/bitwats-release-most-profitable-asic-195600764.html', '2021-05-15 20:48:37', '2021-05-15 20:48:37'),
(11, 'Sambo Dasuki', 'mmzxxz288@gmail.com', '89825829665', 'Business Partner', 'Dear Partner; \r\n \r\nI came across your email contact on Database; Where i was searching for a competent Partner who can handle a lucrative business for me as trustee and manager. I anticipate to read from you soon so I can provide you with more details. \r\n \r\nYours Sincerely, \r\nAlh. Sambo Dasuki \r\nmmzxxz288@gmail.com', '2021-05-20 12:55:30', '2021-05-20 12:55:30'),
(12, 'Basil Njoku', 'wideopen@openarmsoutreachorganization.com', '85926388551', 'Financial support for our mission!', 'We at Open Arms Outreach Organization are proud to tell you of our recent work to provide help to local communities in Africa. \r\nOur mission is to extend the hand of compassion through charity to those in African Nations. We are working tirelessly to fulfill this. \r\nThe following are the things we do: \r\n \r\n1) We provide boreholes for clean drinking water and providing power generators. \r\n2) We partner with local professionals to train them on different skills. \r\n3) We partner with local medical practitioners to provide medical treatment. \r\n4) We provide scholarship to children. \r\n5) WIDOWS are actually at-risk in this part of world, you will help in providing skills and self reliant to start earning something. \r\n \r\nYour support will help us carry out our mission of saving and improving lives. \r\nOur past campaign enabled us provide water. Skills and medical \r\nThis later part of the year, we hope to reach some other  communities left behind especially WIDOWS. \r\nPlease visit us online to learn more about what we do and how you can help, you can put smile on the faces of someone. \r\nAs a nonprofit organization, we rely on the support of people like you. Our personal efforts are not enough. \r\nWe need your help as donors and volunteers. Please visit: http://www.openarmsoutreachorganization.com/ \r\nBasil Njoku, \r\nChairman, board of trustees of Open Arms Outreach Organization', '2021-05-21 02:19:30', '2021-05-21 02:19:30'),
(13, 'Mike Adrian', 'see-email-in-message@monkeydigital.co', '84188543564', 'Increase Domain Strength for ecotecgroup.net', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your ecotecgroup.net website? \r\nHaving a high DA score, always helps \r\n \r\nGet your ecotecgroup.net to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-DR50-UR70/ \r\n \r\n \r\nthank you \r\nMike Adrian\r\n \r\nsupport@monkeydigital.co', '2021-05-21 02:24:18', '2021-05-21 02:24:18'),
(14, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ecotecgroup.net - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ecotecgroup.net, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-05-25 18:57:01', '2021-05-25 18:57:01'),
(15, 'Rajiv Michael', 'rajiindian3@gmail.com', '84834153242', 'Do you need funding?', 'Hello Dear, \r\n \r\nI am working directly with a private family portfolio that can provide funding for credible clients with feasible projects. Currently, we have investment funds for viable projects. \r\n \r\nThey are interested in the following: Institution, Library, Hospitals, Green energy, \r\nPower projects, Agriculture and Real Estate. They can also partner with your company on other projects of value. The interest rate and tenure are fantastic. \r\n \r\nYour response is most anticipated if this is of interest to you. Reach me on email: financial@eurocleargroups.email or rajiindian3@gmail.com \r\n \r\n \r\nKind regards, \r\n \r\nRajiv Michael \r\nFinancial Consultant \r\nWhatsApp: +15183802182 \r\nTelegram@ +12092482370 \r\nEuroclear Groups \r\nfinancial@eurocleargroups.email \r\nUrl: http://euroclear.com', '2021-05-26 15:48:07', '2021-05-26 15:48:07'),
(16, 'Mike Oswald', 'no-replyacacy@gmail.com', '87527351452', 'Local SEO for more business', 'Hi \r\n \r\nI have just verified your SEO on  ecotecgroup.net for its Local SEO Trend and seen that your website could use a boost. \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nStart enhancing your local visibility with us, today! \r\n \r\nregards \r\nMike Oswald\r\n \r\nSpeed SEO Digital Agency \r\nsupport@speed-seo.net', '2021-05-27 13:04:42', '2021-05-27 13:04:42'),
(17, 'Mike Leman', 'no-reply@google.com', '84645182478', 'affordable monthly SEO plans', 'Hello \r\n \r\nI have just took a look on your SEO for  ecotecgroup.net for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Leman\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-06-03 06:37:11', '2021-06-03 06:37:11'),
(18, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ecotecgroup.net...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-06-03 23:31:48', '2021-06-03 23:31:48'),
(19, 'Ashlay Hazalton', 'ashlayhazalton36145@gmail.com', '83238172964', 'How to win casino by free bonus', 'Hi, this is Chris. \r\nWho win all online casinos by using FREE BONUS. \r\n \r\nWitch mean, I don’t really spend money in online casinos. \r\n \r\nBut I win every time, and actually, everybody can win by following my directions. \r\n \r\neven you can win! \r\n \r\nSo, if you’re the person, who can listen to someone really smart, you should just try!! \r\n \r\nThe best online casino, that I really recommend is, Vera&John. \r\nEstablished in 2010 and became best online casino in the world. \r\n \r\nThey give you free bonus when you charge more than $50. \r\nIf you charge $50, your bonus is going to be $50. \r\n \r\nIf you charge $500, you get $500 Free bonus. \r\nYou can bet up to $1000. \r\n \r\nJust try roulette, poker, black jack…any games with dealers. \r\nBecause dealers always have to make some to win and, only thing you need to do is to be chosen. \r\n \r\nDon’t ever spend your bonus at slot machines. \r\nYOU’RE GONNA LOSE YOUR MONEY!! \r\n \r\nNext time, I will let you know how to win in online casino against dealers!! \r\n \r\nDon’t forget to open your VERA&JOHN account, otherwise you’re gonna miss even more chances!! \r\n \r\n \r\n \r\nOpen Vera&John account (free) \r\nhttps://bit.ly/3wZkpco', '2021-06-15 10:13:55', '2021-06-15 10:13:55'),
(20, 'AL SAEED CORPORATION LLC', 'alsaeedcorporation963@gmail.com', '89968659459', 'INVESTMENT/BUSINESS LOAN AT 2% INTEREST RATE', 'We are AL SAEED CORPORATION LLC \r\nWe give out loans to individuals/companies at 2% interest rate annually. We are interested in financing projects of large volume. The repayment period is 1 year to 30 years. \r\nCONTACT US: \r\nE-mail: adelhamad@alsaeedcorp.com', '2021-06-17 13:34:36', '2021-06-17 13:34:36'),
(21, 'Mike Nevill', 'no-replyei@gmail.com', '81659566723', 'SEO Metrics Boost', 'Hi there \r\n \r\nIncrease your ecotecgroup.net SEO metrics values with us and get more visibility and exposure for your website. \r\n \r\nMore info: \r\nhttps://www.monkeydigital.org/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.org/product/ahrefs-dr50-ur70-seo-plan/ \r\nhttps://www.monkeydigital.org/product/trust-flow-seo-package/ \r\n \r\n \r\nthank you \r\nMike Nevill', '2021-06-17 21:10:55', '2021-06-17 21:10:55'),
(22, 'Mike Lamberts', 'no-replyacacy@gmail.com', '84365156671', 'Local SEO for more business', 'Hi \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Lamberts\r\n \r\nSpeed SEO Digital Agency', '2021-06-23 22:54:42', '2021-06-23 22:54:42'),
(23, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ecotecgroup.net - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ecotecgroup.net, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-06-27 04:39:38', '2021-06-27 04:39:38'),
(24, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ecotecgroup.net - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ecotecgroup.net, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-06-27 18:15:38', '2021-06-27 18:15:38'),
(25, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Instead, congrats', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with ecotecgroup.net definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out ecotecgroup.net.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-06-29 20:39:44', '2021-06-29 20:39:44'),
(26, 'Yasuhiro Yamada', 'info.rohtopharmaceutical@gmail.com', '81259963381', 'Representative Request', 'Hello, \r\n \r\n \r\nWith all due respect. If you are based in United States or Canada, I write to inform you that we need you to serve as our Spokesperson/Financial Coordinator for our company ROHTO PHARMACEUTICAL CO., LTD. and its clients in the United States and Canada. It\'s a part-time job and will only take few minutes of your time daily and it will not bring any conflict of interest in case you are working with another company. If interested reply me using this email address: admin@rohtopharmaceutical.jp \r\n \r\n \r\nYasuhiro Yamada \r\nSenior Executive Officer, \r\nROHTO Pharmaceutical Co.,Ltd. \r\n1-8-1 Tatsumi-nishi, \r\nIkuno-Ku, Osaka, 544-8666, \r\nJapan.', '2021-06-30 07:29:33', '2021-06-30 07:29:33'),
(27, 'Mike Derrick', 'beckwithpatt23@gmail.com', '86743517194', 'cheap monthly SEO plans', 'Good Day \r\n \r\nI have just analyzed  ecotecgroup.net for its SEO Trend and saw that your website could use a push. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Derrick\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-07-02 05:07:33', '2021-07-02 05:07:33'),
(28, 'JamesKat', 'no-replyviomy@gmail.com', '86171388385', 'Delivery of your email messages.', 'Hi!  ecotecgroup.net \r\n \r\nDo you know the easiest way to talk about your products or services? Sending messages exploitation feedback forms will allow you to simply enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that may be sent through it\'ll end up within the mailbox that\'s supposed for such messages. Sending messages using Feedback forms is not blocked by mail systems, which means it is absolute to reach the client. You may be ready to send your provide to potential customers who were previously unprocurable because of spam filters. \r\nWe offer you to test our service for gratis. We will send up to fifty thousand message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2021-07-08 21:08:02', '2021-07-08 21:08:02'),
(29, 'SEO X Press Digital Agency', 'gironlisabe32@gmail.com', '88561546626', 'Ultimate SEO Solutions for ecotecgroup.net', 'Hi there \r\n \r\n \r\nI have just took an in depth look on your  ecotecgroup.net for the  ranking keywords and saw that your website could use a boost. \r\n \r\n \r\nWe will increase your Ranks organically and safely, using only whitehat methods, \r\n \r\n \r\nIf interested, please email us \r\n \r\nsupport@digital-x-press.com \r\n \r\n \r\nregards \r\nMike Watson\r\n \r\nSEO X Press Digital Agency \r\nhttps://www.digital-x-press.com', '2021-07-13 10:59:35', '2021-07-13 10:59:35'),
(30, 'Nick Wilson', 'nick@saaytext.com', '84189539331', 'Hoping to connect re texting', 'Hi Its Nick, \r\n \r\nWe have a business texting platform that will help your team engage customers, leads & past clients through texting. \r\n \r\nRates are $49 for 30,000 texts, which is under 0.002 per message. \r\n \r\nYou can bulk text your WHOLE LIST or send two-way texts and get replies. \r\n \r\n \r\nCheck it out @ http://SaayText.com \r\n \r\nThank you, \r\nNick', '2021-07-15 10:46:06', '2021-07-15 10:46:06'),
(31, 'Mike Wood', 'estelalaber32@gmail.com', '86524623118', 'Increase sales for ecotecgroup.net', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your %domain% website? \r\nHaving a high DA score, always helps \r\n \r\nGet your %domain% to have an amazing DA score in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Wood\r\n \r\nsupport@monkeydigital.co', '2021-07-17 02:00:52', '2021-07-17 02:00:52'),
(32, 'Yaninaldug', 'ymud598@gmail.com', '89246986313', 'MinePlex Bot-Криптовалютный - MinePlex Вот-Cryptocurrency', 'ENG \r\n \r\nMinePlex Banking is a new generation mobile crypto bank with its own liquid token. The creator of his own Crossfire technology, which reveals the organic synthesis of banking and the real application of the blockchain. Click on the <a href=https://1.bp.blogspot.com/-qtv7tI-lX_g/YMsWdDDZ_XI/AAAAAAAADaQ/2fRZf1-FoP8GuDPapB526sqzFxqMgyJqQCLcBGAsYHQ/s320/1.png>https://mine-plex-bot.blogspot.com/</a> or Link to go to Telegram on <a href=https://mineplex-bot.com/464939433>https://mine-plex-bot.blogspot.com/</a> \r\n \r\nRUS \r\n \r\nMinePlex Bot-Абсолютно новый революционный продукт на платформе Blockchain. <a href=https://mineplex-bot.com/464939433>https://mine-plex-bot.blogspot.com/</a> \r\n \r\n<img src=\"https://1.bp.blogspot.com/-IwQ_ZVRbs1c/YJPJ7Cp909I/AAAAAAAADXU/U97TxU5wkOwd1uh78uGkeYJb4CIGLDEnwCLcBGAsYHQ/w283-h283/0f0488e33ea51df6c43ca48bdc63c409.png\"> \r\n \r\n<a href=https://mineplex-bot.com/464939433>https://mine-plex-bot.blogspot.com/</a>', '2021-07-17 22:05:29', '2021-07-17 22:05:29'),
(33, 'skyreverySem', 'malinoleg91@mail.ru', '81444943588', 'Private jet charter flights cost of hire', '<a href=https://www.skyrevery.com/destinations/private-jet-bodrum/>Bodrum Private Jet Charter </a>        -  more information on our website <a href=https://skyrevery.com>skyrevery.com</a> \r\n<a href=https://skyrevery.com/>Private jet rental</a> at SkyRevery allows you to use such valuable resource as time most efficiently. \r\nYou are the one who decides where and when your private jet will fly. It is possible to organize and perform a flight between any two civil airports worldwide round the clock. In airports, private jet passengers use special VIP terminals where airport formalities are minimized, and all handling is really fast – you come just 30 minutes before  the estimated time of the departure of the rented private jet. \r\nWhen you need <a href=https://skyrevery.com/>private jet charter</a> now, we can organise your flight with departure in 3 hours from confirmation.', '2021-07-18 03:52:35', '2021-07-18 03:52:35'),
(34, 'Erica Jackson', 'ericajacksonmi0@yahoo.com', '609-801-3166', 'DA50 Backlink to ecotecgroup.net', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to ecotecgroup.net from our Moz DA50 website?\r\n\r\nOur website is dedicated to facts/education, and so can host articles on pretty much any topic.\r\n\r\nYou can either write a new article yourself, or we can link from existing content. The price is just $40 to be paid via Paypal. This is a one-time fee, so there are no extra charges.\r\n\r\nIf you\'re interested, please reply to this email, including the word \'interested\' in the Subject Field.\r\n\r\nNot sure what DA is? Have a read here: https://moz.com/learn/seo/domain-authority\r\n\r\nKind Regards,\r\nErica', '2021-07-18 14:34:29', '2021-07-18 14:34:29'),
(35, 'Mike Gill', 'jayneguer32@gmail.com', '81826546125', 'Local SEO for more business', 'Howdy \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Gill\r\n \r\nSpeed SEO Digital Agency', '2021-07-23 21:00:25', '2021-07-23 21:00:25'),
(36, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ecotecgroup.net...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-07-27 15:48:26', '2021-07-27 15:48:26'),
(37, 'Richelle', 'scruggs.richelle@gmail.com', '0681 680 17 86', 'ecotecgroup.net', 'Morning \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 24.99 dollars with FREE SHIPPING & Returns.  If interested, please visit our site: lensoutlet.online\r\n \r\nThanks and Best Regards, \r\n\r\nRichelle \r\nECOTEC Developments', '2021-07-27 18:55:45', '2021-07-27 18:55:45'),
(38, 'Juliyacycle', 'craig4080112@gmail.com', '85192191999', 'MinePlex Бот для всего Мира! - MinePlex Bot for the whole World!', 'RUS \r\n \r\nМобильный криптобанк нового поколения с собственным ликвидным Токеном на платформе Blockchain. Сегодня цена одного Токена PLEX - $0.50 цента (в октябре 2021 будет очередной халвинг, Токен PLEX  увеличится в 2 или 3 раза), на сегодня минимальная покупка PLEX  за 50 единиц примерно обойдётся в 11 долларов США. Не трудно догадаться сколько PLEX будет стоить примерно через год или три. Давайте вспомним 2009 год когда за 1 доллар США можно было купить 1330 Биткойнов, не сатош а именно Биткойнов(!) -  А сегодня?...  <a href=https://mineplex-bot.com/464939433>https://mineplex-bot.com/464939433</a> \r\n \r\nENG \r\n \r\nA new generation mobile crypto bank with its own liquid Token on the Blockchain platform. Today, the price of one PLEX Token is $0.50 cents (in October 2021 there will be another halving, the PLEX Token will increase by 2 or 3 times), today the minimum purchase of PLEX for 50 units will cost approximately $ 11. It\'s not hard to guess how much PLEX will cost in about a year or three. Let\'s remember 2009, when for 1 US dollar you could buy 1330 Bitcoins, not Satoshi, namely Bitcoins(!) - And today?...  <a href=https://mineplex-bot.com/464939433>https://mineplex-bot.com/464939433</a> \r\n \r\n<center><a href=https://mineplex-bot.com/464939433>https://mineplex-bot.com/464939433</a></center> \r\n \r\n<a href=https://mineplex-bot.com/464939433>https://mineplex-bot.com/464939433</a>', '2021-07-27 19:11:22', '2021-07-27 19:11:22'),
(39, 'Burton', 'info@ecotecgroup.net', '428 3402', 'ecotecgroup.net', 'Good day\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.online\r\n\r\nBest,\r\n\r\nBurton\r\nECOTEC Developments', '2021-07-30 17:53:57', '2021-07-30 17:53:57'),
(40, 'Mike Gill', 'eliseharris3262@gmail.com', '86667694678', 'quality monthly SEO plans', 'Hello \r\n \r\nI have just took a look on your SEO for  ecotecgroup.net for the ranking keywords and saw that your website could use an upgrade. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Gill\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-07-30 23:57:19', '2021-07-30 23:57:19'),
(41, 'Olivia Pointon', 'avaolivia2747@gmail.com', '02079460433', 'Explainer Video for ecotecgroup.net?', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site ecotecgroup.net.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=ivTmAwuli14\r\nhttps://www.youtube.com/watch?v=uywKJQvfeAM\r\nhttps://www.youtube.com/watch?v=oPNdmMo40pI\r\nhttps://www.youtube.com/watch?v=6gRb-HPo_ck\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $189\r\n1-2 minutes = $289\r\n2-3 minutes = $389\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\n\r\nKind Regards,\r\nOlivia', '2021-07-31 23:44:18', '2021-07-31 23:44:18'),
(42, 'Josephine', 'josephine.morales@outlook.com', '0314 3006349', 'ecotecgroup.net', 'Hey there \r\n \r\nMeet your best Buds - True Wireless Earbuds with amazing sound, convenience, portability, & affordability!\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: musicontrol.online\r\n \r\nAll the best, \r\n \r\nJosephine\r\nECOTEC Developments', '2021-08-01 21:24:10', '2021-08-01 21:24:10'),
(43, 'Jimmyzes', 'stroyww@gmail.com', '89291731245', 'Строительство дома под ключ Севастополь', 'РЕШИЛИ ПОСТРОИТЬ <a href=http://stroymdom.ru/>ДОМ В СЕВАСТОПОЛЕ</a>, СИМФЕРОПОЛЕ ИЛИ ДРУГОМ РЕГИОНЕ КРЫМА? \r\n<a href=http://stroymdom.ru/>Строительство дома под ключ</a> включает в себя: \r\nЗаливку фундамента с расчетом нагрузки и состава почвы; \r\nВозведение коробки с армопоясом; \r\nКровельные работы; <a href=http://stroymdom.ru/>строительство домов в севастополе</a> \r\nРазводку коммуникаций и инженерных систем; \r\nНаружную отделку; \r\nВнутреннюю отделку. \r\nМы строим с различных материалов: <a href=http://stroymdom.ru/>строительство домов в севастополе под ключ</a> \r\nРакушечник, Кирпич, Газобетон, Брус, Сруб, Бревно, Каркасные дома, SIP панелей. \r\nИспользуем ваш проект или создаем индивидуальное решение по вашим запросам. \r\nПеред началом строительства мы предоставим вам всю техническую документацию. \r\nНаша строительная компания <a href=http://stroymdom.ru/>строительство домов севастополь недорого</a> строит объекты от бань, бассейнов и до элитных коттеджей. \r\nВы будете 100% удовлетворены результатом. Возникающие в процессе вопросы оговариваются с вами в отдельном порядке. \r\nВ итоге вы получаете Дом Своей Мечты. \r\n<a href=http://stroymdom.ru/>строительство частных домов в севастополе</a> Стройте с профессионалами!', '2021-08-03 09:49:26', '2021-08-03 09:49:26'),
(44, 'Jasmin', 'jasmin.hillman25@outlook.com', '026 310 56 33', 'ECOTEC Developments', 'Hello \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.com\r\n \r\nRegards, \r\n \r\nJasmin\r\nECOTEC Developments', '2021-08-04 14:22:21', '2021-08-04 14:22:21');
INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(45, 'Davidlok', 'kustonikita@gmail.com', '83674896744', 'Строительство домов в Севастополе', 'Здравствуйте. \r\nЗадумываетесь о приобретении или строительстве своего дома? \r\nВыполняем все виды строительно-монтажных работ по Севастополю и Крыму. \r\nРаботаем со своими материалами, а также материалами заказчика. \r\nУ нас есть выгодные предложения специально для вас, а так же система акций и скидок. \r\nВсе работы выполняются под наблюдением опытного прораба. \r\nС вашей стороны возможен удаленный онлайн контроль и возможность в любой момент посетить строящийся объект, \r\nгде наши сотрудники подробно ответят вам на все ваши вопросы и проведут экскурсию по объекту. \r\nОбращайтесь к нам мы Выполняем <a href=https://stroymdom.ru/#doma>строительство домов в севастополе под ключ</a> \r\nНаша команда поможет вам на всех этапах: от перевоплощения вашей идеи в готовый проект, до переезда. \r\nМы выполняем <a href=https://stroymdom.ru/kottezhdi/>строительство домов в севастополе из ракушечника</a> \r\n-поможем подобрать участок, \r\n-выполним <a href=https://stroymdom.ru/gostiniczy-i-oteli/>строительство домов севастополь недорого</a> \r\n-поможем в сборе необходимых документов; \r\n-спроектируем дом с учетом ваших пожеланий \r\n-построим <a href=https://stroymdom.ru/>дом под ключ севастополь</a> \r\n-введем <a href=https://stroymdom.ru/#bloki>строительство дома из газобетона севастополь</a> в эксплуатацию \r\nБесплатно произведем расчёты и проконсультируем. \r\nВаше доверие – наша гордость. \r\n<a href=https://stroymdom.ru/>Строительство в Севастополе и Крыму</a> \r\nДля получения консультации, звоните <a href=https://stroymdom.ru/#doma>8 989 81 82 518</a>', '2021-08-06 06:39:43', '2021-08-06 06:39:43'),
(46, 'Nadine', 'nadine.glassey@gmail.com', '0680 279 38 53', 'ECOTEC Developments', 'Hello \r\n\r\nBody Revolution - Medico Postura™ Body Posture Corrector\r\n\r\nImprove Your Posture INSTANTLY!\r\n\r\nGet it while it\'s still 60% OFF!  FREE Worldwide Shipping!\r\n\r\nGet yours here: medicopostura.com\r\n\r\nBest Wishes, \r\n \r\nNadine\r\nECOTEC Developments', '2021-08-07 12:44:47', '2021-08-07 12:44:47'),
(47, 'LloydPlusy', 'svper98@mail.ru', '89563297493', 'Продажа сплит систем Краснодар', 'Продажа и установка сплит-систем в Краснодаре. Качественно и недорого.  \r\n<a href=https://climate23.ru/manufacturer/gree>https://climate23.ru/manufacturer/gree</a> Сервисное обслуживание сплит систем в Краснодаре \r\n \r\nКомплекс работ, проводимых при обслуживании сплит-систем: \r\nпроводится полная разборка внутреннего блока и чистка его аппаратом высокого давления Кёрхер с применением специального химического средства. \r\nсостава химии,который разработали наши специалисты  в течении многих лет \r\n. Благодаря применению этого состава на поверхности сплит системы  в течении года отсутствуют грибок и плесень,которые очень вредны для организма человека. \r\nпроверка на герметичность фреоновой системы, достаточность фреона, при необходимости дозаправка фреоном ( дозаправка до 100 грамм входит в стоимость сервисного обслуживания); \r\nчистка теплообменника внутреннего блока профессиональным пароочистителем Керхер; \r\nпроверка электронного блока управления на выполнение всех режимов работы; \r\nчистка жалюзей и воздушных фильтров внутреннего блока; \r\nчистка системы дренажа; \r\nчистка теплообменника наружного блока.', '2021-08-09 05:13:39', '2021-08-09 05:13:39'),
(48, 'ThomasDop', 'barsdzon1@gmail.com', '86832127929', 'Строительная Компания построить Дом от 1 до 6 месяцев по гарантированной прозрачной цене!', 'Строительная Компания уже более 15 лет работает в сфере <a href=https://stroymdom.ru/>строительство домов в севастополе под ключ</a> \r\nТеперь мы рады быть вам полезны в <a href=https://stroymdom.ru/>строительство домов севастополь недорого</a>! Мы понимаем, как сложно найти достойного подрядчика и оценить его уровень. \r\nИменно поэтому строительство домов севастополь недорого, опирается на свой многолетний опыт: \r\n<a href=https://stroymdom.ru/>строительство домов севастополь недорого</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе под ключ</a> \r\n<a href=https://stroymdom.ru/>строительство частных домов в севастополе</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе из ракушечника</a> \r\n<a href=https://stroymdom.ru/>строительство домов севастополь недорого</a> \r\n<a href=https://stroymdom.ru/>строительство дома из газобетона севастополь</a> \r\nмы подготовили для вас ряд рекомендаций, которые сильно облегчат процесс поиска строительной компании. \r\nЧто вы можете заказать в компании? \r\n<a href=https://stroymdom.ru/>строительство домов севастополь недорого</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе под ключ</a> \r\n<a href=https://stroymdom.ru/>строительство частных домов в севастополе</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе из ракушечника</a> \r\n<a href=https://stroymdom.ru/>строительство домов севастополь недорого</a> \r\n<a href=https://stroymdom.ru/>строительство дома из газобетона севастополь</a> \r\nДома \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе под ключ</a> \r\n<a href=https://stroymdom.ru/>строительство частных домов в севастополе</a> \r\n \r\nСтроительство дачных  домов. \r\nПолный комплекс работ по отделке: \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе под ключ</a> \r\n<a href=https://stroymdom.ru/>строительство домов севастополь недорого</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе</a> \r\n<a href=https://stroymdom.ru/>строительство частных домов в севастополе</a> \r\n<a href=https://stroymdom.ru/>строительство домов в севастополе из ракушечника</a> \r\n<a href=https://stroymdom.ru/>строительство домов севастополь недорого</a> \r\n<a href=https://stroymdom.ru/>строительство дома из газобетона севастополь</a> \r\nСтроительство малых архитектурных форм \r\n \r\nРекомендации.Гарантия. \r\nПрофессионально,качественно, недорого, и в срок. \r\nНАШ ДЕВИЗ ОТВЕТСТВЕННОСТЬ И ДОБРОПОРЯДОЧНОСТЬ. \r\nЗвоните с удовольствием отвечу на все интересующие вопросы. \r\nПри комплексном заказе дополнительные бонусы. \r\n \r\nКонсультация бесплатна, звоните, ждем!) \r\nОказываем помощь в Севастополе и Крыму.', '2021-08-09 09:16:11', '2021-08-09 09:16:11'),
(49, 'DarrickGew', 'marser.98@mail.ru', '87868141875', 'Живой коллаген collagen', 'Компания-производитель не пошла стандартным путем и не стала создавать очередную косметику, спортивное или диетические питание. Потому нами был создан продукт, которому было уготовано стать настоящим прорывом в сфере красоты, косметологии, SPA и фитнес-индустрии, оздоровления и восстановления человеческого организма на клеточно-молекулярном уровне. Сертификация биокомплекса ЖИВОЙ КОЛАГЕН заняла более 3 лет, а сертификация его производства была проведена по всем международным стандартам качества ISO, ХАССП.  \r\n<a href=https://collagen-pmt.ru/pishchevoy-kollagen.html>https://collagen-pmt.ru/pishchevoy-kollagen.html</a> Я могу смело заявить, что на сегодняшний день процедура коллагенирования является самой мощной процедурой восстановления волос. ЖИВОЙ КОЛАГЕН в сфере косметологии помогает в разы усилить и продлить эффект от процедур для лица и тела, а наш пищевой биокомплекс ЖИВОЙ КОЛАГЕН становится идеальной формулой для жизнедеятельности нашего организма.', '2021-08-10 00:57:32', '2021-08-10 00:57:32'),
(50, 'BruceBix', 'marby10@mail.ru', '86179422526', 'холодильные компрессора', 'Для хранения, транспортировки, дозревания продуктов и других технологических процессов компании нуждаются в надежных холодильных установках. Современное промышленное холодильное оборудование можно заказать в компании «Эверест Технолоджи». Мы поставляем и производим качественные камеры и комплексы, выполняем установку устройств, предлагаем дальнейшее обслуживание. У нас можно найти варианты, которые удовлетворят различные требования, есть возможность подобрать системы в индивидуальной комплектации.  \r\n<a href=https://everestcold.ru>https://everestcold.ru</a> Торговое и складское оборудование подбирается для каждого бизнеса отдельно. Это позволяет разумно использовать электроэнергию при выполнении поставленных коммерческих задач. Работа промышленных холодильных установок контролируется автоматикой, это упрощает контроль, сокращает количество возможных внештатных ситуаций. В работе применяются проверенные комплектующие, поэтому системы служат долго и безотказно.', '2021-08-10 19:18:24', '2021-08-10 19:18:24'),
(51, 'CharlesKeymn', 'lerbez13@mail.ru', '89518522668', 'аппарат для резки металла', 'Компания ГИБСТАНКИ создана 28 февраля 2008 года. На нашем сайте Вы найдете то,что давно искали. Какое бы изделие Вы не задумали,у нас Вы найдете металлообрабатывающие станки и инструмент, с помощью которого Вы решите поставленную задачу. Компания ГИБСТАНКИ - Ваш правильный выбор!  \r\n<a href=https://gibstanki.ru/kronshtejnogib-plg50.html>https://gibstanki.ru/kronshtejnogib-plg50.html</a> Станки для продольной и продольно-поперечной резки металла, гильотины сабельного типа Stalex, пресс-ножницы Stalex.', '2021-08-11 13:36:34', '2021-08-11 13:36:34'),
(52, 'The guides', 'dhfdjkg@yahoo.com', '01066133068', 'Park view', 'ممكن حد يكلمنى على مول الداون تاون', '2021-08-11 20:16:10', '2021-08-11 20:16:10'),
(53, 'Dorine', 'dorine.seymore@gmail.com', '04971 92 95 99', 'ECOTEC Developments', 'Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It\'s perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  magicmat.shop\r\n\r\nHave a great time, \r\n \r\nDorine\r\nECOTEC Developments', '2021-08-12 00:38:34', '2021-08-12 00:38:34'),
(54, 'CharlieByday', 'likpe02@mail.ru', '83329855926', 'кухни каталог', 'КУПИТЬ КУХНЮ В МОСКВЕ НЕДОРОГО ОТ ПРОИЗВОДИТЕЛЯ КУХНИВИЗА  \r\n<a href=https://kuhnivisa.ru/nashi-kukhni/fasady-massiv-dereva/>https://kuhnivisa.ru/nashi-kukhni/fasady-massiv-dereva/</a> Наша компания занимается производством качественных кухонных гарнитуров в традиционном стиле и в стиле модерн. Мы работаем в этом рынке с 2008 года. За это время сумели собрать команду больших профессионалов, создать материальные и технические условия для того, чтобы кухни на заказ нашей компании имели отличные функциональные и эстетические показатели.', '2021-08-12 08:06:01', '2021-08-12 08:06:01'),
(55, 'Jamestaupe', 'irgar06@mail.ru', '88867351356', 'стоимость кухни', 'КУПИТЬ КУХНЮ В МОСКВЕ НЕДОРОГО ОТ ПРОИЗВОДИТЕЛЯ КУХНИВИЗА  \r\n<a href=https://kuhnivisa.ru/nashi-kukhni/portofino-italiy/>https://kuhnivisa.ru/nashi-kukhni/portofino-italiy/</a> Кухонный гарнитур без ручек в стиле модерн привлекает внимание сдержанностью и эффектностью, прогрессивностью и практичностью. Особо изысканно выглядит стильная комбинация фасада выполненного с фактурой под бетон и глянцевых белых стекло навесных шкафчиков. Практичностью и комфортом радует итальянская фурнитура: удобное расположение, простые и красивые формы. Благодаря светлым тонам верхнего яруса, кухонное пространство приобретает воздушность, визуально расширяется. Уютно, модно и комфортно.', '2021-08-13 03:08:45', '2021-08-13 03:08:45'),
(56, 'Adam Jensen', 'adam789bright@gmail.com', '87281383823', 'More likes and followers', 'Need Facebook likes or Instagram followers? \r\nWe can help you. For more info please visit https://1000-likes.com', '2021-08-13 20:34:10', '2021-08-13 20:34:10'),
(57, 'WilliamNadly', 'marmitr97@mail.ru', '85882689838', 'Изготовление дверей из дерева', 'Мебель от компании LegnoStyle \r\nМебель из дерева на заказ – это всегда оригинальное и нестандартное решение. В современных магазинах готовая деревянная мебель представлена в широком ассортименте, но только изделие, созданное по индивидуальным параметрам способно стать ярким акцентом и изюминкой любого интерьера. Деревянная мебель под заказ – это возможность обустроить пространство в соответствии с собственными предпочтениями, не удерживая фантазию в рамках стандартных дизайнерских решений и типовых вариантов.  \r\n<a href=https://www.legnostyle.ru/proizvodstvo/lestneycy/>https://www.legnostyle.ru/proizvodstvo/lestneycy/</a> Производство из натурального дерева осуществляется по уникальным технологиям. Неизменные характеристики нашей продукции: \r\n \r\nпрактичность и красота – заказ деревянной мебели и лестниц любого дизайна и функционала; \r\nдолговечность – производство осуществляется по самым высоким стандартам качества; \r\nэксклюзивность – элитная мебель из массива дерева эффективно преобразит любое помещение; \r\nэкологичность – массив дуба, лиственница или натуральная ольха отличаются своим неповторимым, естественным очарованием и абсолютной безопасностью для человека и окружающей среды. \r\nМы работаем для того, чтобы ваши мечты о комфортном и уютном доме или офисе стали реальностью!', '2021-08-13 22:40:58', '2021-08-13 22:40:58'),
(58, 'SEO X Press Digital Agency', 'no-replyviomy@gmail.com', '83976643517', 'Get more dofollow backlinks for ecotecgroup.net', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Daniels\r\n \r\nsupport@digital-x-press.com', '2021-08-14 12:01:41', '2021-08-14 12:01:41'),
(59, 'Irinacycle', 'irinanikulina4167@gmail.com', '81613982468', 'MinePlex Cryptocurrency Bank', 'MinePlex Bot. A New Generation Mobile Crypto Bank with Its Own Liquid Token on the Blockchain Platform.  <a href=https://mineplex-bot.com/en/464939433>https://mineplex-bot.com/en/464939433</a> \r\n \r\n<a href=https://mineplex-bot.com/464939433>https://mineplex-bot.com/en/464939433</a> \r\n \r\nnvizit', '2021-08-14 14:10:33', '2021-08-14 14:10:33'),
(60, 'Alexissaunc', 'milsm06@mail.ru', '81761651895', 'изготовление лестниц', 'У нас вы можете заказать эксклюзивные межкомнатные двери по индивидуальному проекту любых размеров, форм и отделки из благородных пород древесины: бук, дуб, ольха и других. \r\n \r\nИзготовим для вас кабинеты, библиотеки, шкафы, стеновые панели, балки, плинтуса и др.  \r\n<a href=https://www.legnostyle.ru/proizvodstvo/lestneycy/>https://www.legnostyle.ru/proizvodstvo/lestneycy/</a> Оформляя заказ на элитный интерьер из натурального дерева в компании LegnoStyle, вы можете рассчитывать на высочайший уровень сервиса на всех этапах сотрудничества. Мы предлагаем: \r\n \r\nэксклюзивные проекты, в которых сочетаются современные технологии, профессиональный дизайнерский опыт и пожелания клиента; \r\nвысококачественный массив дерева для изготовления изделий по строгим индивидуальным размерам, с учетом структуры помещения и стиля интерьера; \r\nмодели лестниц любой конфигурации и сложности из различных благородных пород древесины (элитный дуб и др.), их комплектацию эксклюзивной фурнитурой и элементами декора; \r\nвозможность заказа продукции по эскизам или фотографии; \r\nВ список наших услуг также входит профессиональная сборка и установка готовых изделий, а также оперативная доставка по Москве и области в удобное для клиента время.', '2021-08-14 18:06:49', '2021-08-14 18:06:49'),
(61, 'Mike Mason', 'joelculpepper3262@gmail.com', '88111712972', 'Increase sales for ecotecgroup.net', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your ecotecgroup.net website? \r\nHaving a high DA score, always helps \r\n \r\nGet your ecotecgroup.net to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Mason\r\n \r\nsupport@monkeydigital.co', '2021-08-14 19:48:38', '2021-08-14 19:48:38'),
(62, 'Richardjeots', 'ritmil04@mail.ru', '87734372966', 'отделка лестницы деревом', 'Межкомнатные двери: варианты на любой вкус \r\nДвери из массива дуба — это всегда практично, эффективно и красиво. Дверная конструкция из дерева представляет собой функциональный элемент любого интерьера. LegnoStyle предлагает широкий ассортимент продукции премиум-класса по разумной цене. Межкомнатные двери из дуба всегда будут смотреться эксклюзивно и стильно, радуя изящным великолепием и практичностью на протяжении всего времени эксплуатации.  \r\n<a href=https://www.legnostyle.ru/catalog/mejkomnatnie-dveri/mejkomnatnie-arki-i-portali/>https://www.legnostyle.ru/catalog/mejkomnatnie-dveri/mejkomnatnie-arki-i-portali/</a> Мы изготовим Ваш заказ по уникальной итальянской технологии, используя также детали и узлы итальянского производства, а также произведем качественный монтаж. \r\n \r\nОсновным направлением нашей деятельности было и остается проектирование и изготовление мебели, дверей, а также лестниц по индивидуальным заказам. Собственное производство LegnoStyle - гарантия качества производимой продукции.', '2021-08-15 14:47:13', '2021-08-15 14:47:13'),
(63, 'Lancebrery', 'sirsm99@mail.ru', '89672916983', 'Межкомнатные двери пвх в Спб', 'Компания «Метр квадратный» - это прекрасное сочетание житейской мудрости и опыта старшего поколения с креативностью и юношеским задором молодежи. Мы создали нашу компанию в 2006 году, и с этого времени большая часть нашей жизни посвящена работе с отделочными и строительными материалами. \r\n \r\nМы - профессионалы! И с гордостью говорим об этом! \r\nНести в Ваш дом уют - это наша главная задача!  \r\n<a href=https://metr2.pro/mezhkomnatnye-dveri/mezhkomnatnye-dveri-dlya-dachi.html>https://metr2.pro/mezhkomnatnye-dveri/mezhkomnatnye-dveri-dlya-dachi.html</a> Если Вы решили купить новые межкомнатные двери или металлические входные, заменить старую сантехнику или заказать металлопластиковые окна, переклеить старые обои или отштукатурить стены - то эти, и еще многие другие проблемы поможем решить мы.', '2021-08-16 14:24:56', '2021-08-16 14:24:56'),
(64, 'Audra', 'audra.carr@gmail.com', '0664 411 88 11', 'ECOTEC Developments', 'Morning\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nAll the best,\r\n\r\nAudra\r\nECOTEC Developments', '2021-08-17 01:29:59', '2021-08-17 01:29:59'),
(65, 'Kylie Hart', 'kyliehartila@yahoo.com', '928 74 193', 'DA50 Backlink to ecotecgroup.net', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to ecotecgroup.net from our Moz DA50 website?\r\n\r\nOur website is dedicated to facts/education, and so can host articles on pretty much any topic.\r\n\r\nYou can either write a new article yourself, or we can link from existing content. The price is just $40 USD to be paid via Paypal. This is a one-time fee, so there are no extra charges.\r\n\r\nIf you\'re interested, please reply to this email, including the word \'interested\' in the Subject Field.\r\n\r\nNot sure what DA is? Have a read here: https://moz.com/learn/seo/domain-authority\r\n\r\nKind Regards,\r\nKylie', '2021-08-17 06:24:35', '2021-08-17 06:24:35'),
(66, 'Georgeves', 'dinbok12@mail.ru', '84285315165', 'автоматика для ворот купить', 'Помогаем в решении любых задач связанных с установкой \r\nи ремонтом автоматических ворот  \r\n<a href=https://mosvrata.ru/2017/03/15/bytec/>https://mosvrata.ru/2017/03/15/bytec/</a> Автоматика для гаражных ворот позволяет контролировать проникновение в помещение и максимально упростить использование въезда без необходимости покидать транспортное средство. Управление системами осуществляется посредством специального пульта, радиус действия которого исчисляется несколькими десятками метров. Давайте обсудим особенности выбора и стоимость такого рода механизмов в Москве.', '2021-08-17 13:45:32', '2021-08-17 13:45:32'),
(67, 'Eliseocrync', 'marser2022@mail.ru', '89846918253', 'инженерная доска пола', 'ООО \"Компания Марк\" организована 01 июля 2011 года, ранее существовала с 03 февраля 2000 года, как ООО \"Марк\". Основной коллектив компании с 2000 года остается прежним и не менялся до сих пор. Мы динамично развивающаяся компания, ориентированная на порядочное и выгодное сотрудничество. Сохраняем обслуживание на высшем уровне. И мы дорожим своими клиентами! Компания Марк - качество!  \r\n<a href=http://parketmark.ru/stati/article_post/pochemu-parketnaya-doska-wood-bee-vud-bi-deshevle>http://parketmark.ru/stati/article_post/pochemu-parketnaya-doska-wood-bee-vud-bi-deshevle</a> Форма — второй важный элемент. Мы используем три основных вида укладки доски, от самой простой палубной до наиболее сложной и дорогой французской елочки. Каждый из способов укладки влияет на геометрию и визуальное восприятие пространства.', '2021-08-18 13:11:11', '2021-08-18 13:11:11'),
(68, 'Errol', 'errol.schenk@googlemail.com', '030 93 29 45', 'Errol Schenk', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: fashiondaily.online\r\n\r\nThe Best, \r\n\r\nErrol\r\nECOTEC Developments', '2021-08-19 06:09:02', '2021-08-19 06:09:02'),
(69, 'CarltonJef', 'milby13@mail.ru', '81553951882', 'упаковочные оборудование', 'Монтажный отдел является наиболее важным звеном в цепи реализации проекта и производит монтаж, установку оборудования на промышленных предприятиях. Это специализированное подразделение компании выполняет комплекс работ по реализации технологических проектов в различных отраслях индустрии и осуществляет проведение монтажных работ, включая комплектацию необходимыми материалами и оборудованием. \r\n \r\nВ монтажный отдел входят такие специальности, как сварщик-аргонщик, слесарь-монтажник. \r\n \r\nНакопленный за несколько лет работы опыт позволяет проводить различные виды и объем работ, в том числе: \r\n \r\nМонтаж технологических трубопроводов из нержавеющих сталей со сваркой в среде аргона \r\nУстановка и обвязка технологического оборудования \r\nМонтаж технологических трубопроводов из нержавеющих сталей со сваркой в среде аргона для систем выталкивания (пиг-система)  \r\n<a href=https://provision-group.ru>https://provision-group.ru</a> Серия насосов AL является актуальной для рынка объёмных роторных насосов. Настоящий насос поддерживает высокоуровневые технологии и производительность – при экономичной цене. Серия AL компании Ampco отлично подходит для множества применений в пищевой, молочной, бакалейной и фармацевтической отраслях промышленности с диапазоном вязкости от 1 до 1,000,000 сантипуаз и возможностью самовсасывания вплоть до 12 футов (3,66 метра). Линейка серии AL имеет несколько опциональных характеристик, обеспечивающих максимальную гибкость для каждого применения. Вы можете выбрать следующие типы уплотнения: двойное механическое уплотнение, механическое уплотнение с промывкой, двойное манжетное уплотнение, тройное манжетное уплотнение, уплотнительное кольцо и двойное уплотнительное кольцо.', '2021-08-19 12:47:40', '2021-08-19 12:47:40'),
(70, 'Olivia Pointon', 'avaolivia2747@gmail.com', '02079460433', 'Explainer Videos for ecotecgroup.net', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site ecotecgroup.net.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\nhttps://www.youtube.com/watch?v=JHfnqS2zpU8\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $189\r\n1-2 minutes = $289\r\n2-3 minutes = $389\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply back.\r\n\r\nKind Regards,\r\nOlivia', '2021-08-19 19:04:05', '2021-08-19 19:04:05'),
(71, 'Mike Alsopp', 'juliaholliday7162@gmail.com', '84988854363', 'Local SEO for more business', 'Hi \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Alsopp\r\n \r\nSpeed SEO Digital Agency', '2021-08-19 23:33:36', '2021-08-19 23:33:36'),
(72, 'KevinDiz', 'marnes10@mail.ru', '89578381195', 'сайт продвижение', 'SAYT-RF.RU — сильная команда профессионалов и дружная семья. \r\nМы ценим доброту и порядочность. \r\n \r\nДоведем вас в Топ с точностью до миллиметра..  \r\n<a href=http://sayt-rf.ru>http://sayt-rf.ru</a> Продвижение Вашего проекта в компании SAYT-RF.RU поможет Вам: \r\nУменьшить показатель отказов на Вашем сайте \r\nУвеличить время нахождения пользователя на сайте \r\nПовысить глубину просмотра Вашего ресурса \r\nПриумножить коэффициент кликабельности Вашего сайта в поисковой выдаче \r\nОстановить выбор пользователя на Вашем сайте из поисковой выдачи \r\nВсе выше перечисленное является неотъемлемой частью любой качественной работы по SEO продвижению сайта', '2021-08-20 12:02:33', '2021-08-20 12:02:33'),
(73, 'HaroldLib', 'marpu11@mail.ru', '84227297927', 'монтаж водоснабжения', 'Почему сотни клиентов доверяют работу нашей компании? \r\n \r\nИндивидуальный подход в решении вопроса с очисткой скважины. \r\nКонкурентоспособные цены на любой вид работы. \r\nОперативное выполнение задач по очистке и ремонту артезианских скважин, песочных скважин. \r\nПредоставление гарантии на 1 год на весь спектр работ, выполняемых нами. \r\nВысокое качество услуг. \r\nИспользование только профессионального оборудования и инструмента. \r\nНаши работники с радостью дадут вам грамотную консультацию и помогут решить любые проблемы в сфере водоснабжения. Звоните, мы ответим на все ваши вопросы и с удовольствием поможем!  \r\n<a href=https://skwajina.ru/region/podolskij-rajon>https://skwajina.ru/region/podolskij-rajon</a> Организация водоснабжения частного загородного дома не представляется возможной без бурения скважины и ее обустройства с использованием специального оборудования, осуществляющего непрерывную подачу воды для пользователей. \r\n \r\nОбустройство скважин под ключ – одно из приоритетных направлений нашей деятельности! Собственный парк спецтехники, профессиональное оборудование и высококлассные специалисты с большим опытом работы от инженеров и мастеров до прорабов – вот, что мы можем предложить нашим клиентам!', '2021-08-21 11:06:15', '2021-08-21 11:06:15'),
(74, 'Robertsam', 'elmitr11@mail.ru', '89152653121', 'кузовной ремонт автомобиля', 'НАШ АВТОСЕРВИС РАСПОЛАГАЕТ ВСЕМ НЕОБХОДИМЫМ, ЧТОБЫ ПРЕДОСТАВИТЬ ПОЛНЫЙ КОМПЛЕКС СЕРВИСНЫХ УСЛУГ ПО РЕМОНТУ И ОБСЛУЖИВАНИЮ АВТОМОБИЛЕЙ ВСЕХ МАРОК  \r\n<a href=https://srv-motors.ru>https://srv-motors.ru</a> Кузовные работы на Академической \r\nКузовные работы Японских, Американски, Российских, Немецких, Корейских, Европейских, Китайских автомобилей (Audi, Toyota, BMW, Land Rover, Ford, Honda, Hyundai, Kia, (ВАЗ), Mazda, Mercedes, Mitsubishi, Nissan, Renault, Skoda, Toyota, Volkswagen, Targe всех марок)', '2021-08-22 10:29:28', '2021-08-22 10:29:28'),
(75, 'Stuart', 'stuart.kindler27@hotmail.com', '0371-6876021', 'Stuart Kindler', 'Hi\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nTo your success,\r\n\r\nStuart', '2021-08-23 10:20:15', '2021-08-23 10:20:15'),
(76, 'Mike Russel', 'christinefloyd7162@gmail.com', '86599224653', 'whitehat monthly SEO plans', 'Hi \r\n \r\nI have just analyzed  ecotecgroup.net for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\nregards \r\nMike Russel\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-08-27 23:46:39', '2021-08-27 23:46:39'),
(77, 'Gabriel Angelo', 'gafinanci.e.r@gmail.com', '86814638697', 'Project/Business financing', 'Dear Entrepreneur, \r\n \r\nI\'m Gabriel Angelo, My company can bridge funds for your new or ongoing business. do let me know when you receive this message for further procedure. \r\n \r\nWe also pay 1% commission to brokers and friends who introduce project owners for finance or other opportunities. \r\n \r\nYou can reach me directly using this email address: gabriel_angelo@nestalconsultants.com \r\n \r\nRegards, \r\nGabriel Angelo', '2021-08-28 03:50:17', '2021-08-28 03:50:17'),
(78, 'Carlo', 'rosa.carlo92@hotmail.com', '0486 89 29 80', 'Carlo Rosa', 'Hello there \r\n \r\nLEARN HOW PawSafer™ CAN SAFELY TRIM YOUR DOG\'S NAILS IN NO TIME FROM HOME.\r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: pawsafer.shop\r\n \r\nThe Best, \r\n \r\nCarlo', '2021-09-20 23:05:56', '2021-09-20 23:05:56'),
(79, 'Mike Freeman', 'no-replyei@gmail.com', '84921293154', 'whitehat monthly SEO plans', 'Good Day \r\n \r\nI have just checked  ecotecgroup.net for the ranking keywords and saw that your website could use a push. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Freeman\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-09-24 02:04:32', '2021-09-24 02:04:32'),
(80, 'Hai', 'wymark.hai@googlemail.com', '(12) 7165-4543', 'ECOTEC Developments', 'Hello there \r\n\r\nThe New Powerful LED Flashlight is The Perfect Flashlight For Any Situation!\r\n\r\nThe 3,000 Lumens & Adjustable Zoom gives you the wide field of view and brightness other flashlights don’t have.\r\n\r\n50% OFF + Free Shipping!  Get it Now: linterna.shop\r\n\r\nCheers, \r\n\r\nHai', '2021-09-24 13:51:25', '2021-09-24 13:51:25'),
(81, 'JamesKat', 'no-replyviomy@gmail.com', '89292347541', 'Do you want cheap and innovative advertising for little money?', 'Good day!  ecotecgroup.net \r\n \r\nDo you know the simplest way to talk about your products or services? Sending messages using feedback forms will allow you to easily enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that may be sent through it\'ll find yourself within the mailbox that\'s meant for such messages. Causing messages using Contact forms is not blocked by mail systems, which implies it is bound to reach the recipient. You may be able to send your offer to potential customers who were previously untouchable because of spam filters. \r\nWe offer you to test our service for free of charge. We\'ll send up to fifty thousand message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2021-09-25 14:45:31', '2021-09-25 14:45:31'),
(82, 'Clement', 'melba.clement@gmail.com', '416-881-7875', 'Clement Melba', 'Hey \r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time.\r\n\r\nBuy now: thawking.online\r\n\r\nBest, \r\n\r\nClement', '2021-09-26 23:26:09', '2021-09-26 23:26:09'),
(83, 'Mike Milton', 'no-replyei@gmail.com', '84686898893', 'Get more dofollow backlinks for ecotecgroup.net', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Milton\r\n \r\nsupport@digital-x-press.com', '2021-09-29 01:06:05', '2021-09-29 01:06:05'),
(84, 'Colleen Hansen', 'chanokformsen@gmail.com', '83398495489', 'Finance Your Business with Government-backed Grants', 'Explore government-backed grants and funding programs for your business! APPLY NOW - https://rebrand.ly/USAGOV-SmallBusiness-Grants', '2021-09-29 07:34:22', '2021-09-29 07:34:22'),
(85, 'Mike Baldwin', 'no-replyei@gmail.com', '87683429274', 'Increase sales for ecotecgroup.net', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your ecotecgroup.net website? \r\nHaving a high DA score, always helps \r\n \r\nGet your ecotecgroup.net to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Baldwin\r\n \r\nsupport@monkeydigital.co', '2021-10-04 20:46:57', '2021-10-04 20:46:57'),
(86, 'Felica', 'hardie.felica@yahoo.com', '0328 0124368', 'Felica Hardie', 'EASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain! Try NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\n\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\nEnjoy, \r\n\r\nFelica', '2021-10-05 09:30:25', '2021-10-05 09:30:25'),
(87, 'Rosie', 'rosie@ecotecgroup.net', '03.79.83.62.14', 'Rosie Richart', 'Hello\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n✔️LED Bionic Wave Technology\r\n✔️Eco-Friendly\r\n✔️15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nSincerely,\r\n\r\nRosie\r\nECOTEC Developments', '2021-10-10 21:13:19', '2021-10-10 21:13:19'),
(88, 'skyreverySem', 'malinoleg91@mail.ru', '85583477559', 'Аренда частного самолета с экипажем', '<a href=https://www.skyrevery.ru/populyarnye_napravleniya/barcelona/>Заказать частный самолет в Барселону или арендовать бизнес-джет - SkyRevery</a>        -  подробнее на нашем сайте <a href=https://skyrevery.ru>skyrevery.ru</a> \r\n<a href=https://skyrevery.ru/>Аренда частного самолета</a> с экипажем в компании SkyRevery – это выбор тех, кто ценит свое время и живет по своему расписанию! \r\nАренда частного самолета помогает экономить самый важный ресурс – время. Арендовав частный самолет, именно Вы решаете, когда и куда полетите. Для выполнения чартерных рейсов мы предлагаем частные самолеты иностранного производства, гарантирующие высокий уровень комфорта и безопасности полета. Внимательные бортпроводники и высокопрофессиональные пилоты сделают Ваш полет максимально приятным и удобным. \r\nКогда Вам нужна <a href=https://skyrevery.ru/>аренда самолета</a> срочно, мы можем организовать для Вас вылет по готовности от 3 часов с момента подтверждения.', '2021-10-10 21:42:16', '2021-10-10 21:42:16'),
(89, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Instead, congrats', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with ecotecgroup.net definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out ecotecgroup.net.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-10-12 18:39:21', '2021-10-12 18:39:21'),
(90, 'Lindsay', 'info@ecotecgroup.net', '06504 26 34 26', 'Lindsay Cordner', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: hineck.online\r\n\r\nMany Thanks,\r\n\r\nLindsay\r\nECOTEC Developments', '2021-10-13 09:58:12', '2021-10-13 09:58:12'),
(91, 'ApkJoycasnog', 'derekpoole063@gmail.com', '87652429847', 'Height 10 Ambulatory casinos 2021 - The best applications to casinos as a service to real bank', 'The ability to install an online casino on a smartphone makes the gaming process more comfortable and does not tie the player to a stationary computer, and special PC programs provide a secure Internet connection. Gamblers are happy to use such software to access gambling entertainment, so operators offer them functional applications for smartphones and PCs. On this page we have collected the best casino apps for Android with a real money game. \r\nMany operators offer free download of online casinos for Android <a href=https://casinoapk3.xyz/>Casino Apk</a> for real money with withdrawal to electronic wallets or bank cards. Mobile casinos are being developed for the convenience of customers and attracting a larger audience. Such applications have a number of undeniable advantages: \r\n \r\nAccess to the casino from anywhere where there is Wi-Fi or mobile Internet. At the same time, applications do not take up much space in the device\'s memory. \r\nThe functionality corresponds to the desktop version of the resource: you can activate bonuses, participate in tournaments, replenish your account, play slot machines for money in the application with the withdrawal of winnings, etc. \r\nEnd-to-end registration. There is no need to additionally register from your phone if you have an active account. \r\nFree demos. Gamblers can launch any video slot or board game in a free trial mode. \r\nThe only drawback of the version adapted for portable devices may be the absence of some titles in the presented collection. The mobile application of an online casino with slot machines for playing for money gives access only to slots in HTML5 format, but so far not all providers have redesigned their portfolios in accordance with this requirement. However, the largest manufacturers have been producing slot machines for several years taking into account new standards and remaking old titles for them, which are especially popular among gamblers. \r\n \r\nMoreover, providers take into account the features of portable devices when creating games. A special interface and special modes of use are being developed for them. For example, Wazdan offers a feature that increases the battery economy of the device by 40%, and Ultra Lite technology, which preserves the image quality and download speed with a slow Internet connection. Slot machines on the phone have only a start button and a bet level control. \r\n \r\nThe gaming interface on a small screen is slightly modified compared to the desktop version, so it is quite convenient to play in the casino application for money from your phone, manage slots and slot machines. The main menu is hidden in drop-down windows, and links to the main sections are fixed at the top or bottom of the screen. Also, the online chat call button for contacting technical support specialists is always in sight. \r\n \r\nSince the Google Play and AppStore digital distribution services impose strict restrictions on gambling programs, you can download the casino application to your phone for playing real money from the official website. To download, you will need a link to the apk file and the user\'s permission to install and run the program. Sometimes operators post detailed installation instructions on the page with a link, and if there are difficulties, the customer can always consult with the customer service. \r\n \r\nSome licensed casinos also offer clients programs for personal computers and laptops. You can <a href=http://casinoapk3.xyz>Apk Casino</a> them from the official website. Such software is popular due to fast uninterrupted access to games from the desktop without using a browser.', '2021-10-13 22:45:42', '2021-10-13 22:45:42'),
(92, 'Mike Porter', 'no-replyei@gmail.com', '84737413619', 'Local SEO for more business', 'Howdy \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Porter\r\n \r\nSpeed SEO Digital Agency', '2021-10-14 02:24:03', '2021-10-14 02:24:03'),
(93, 'Mike Oldridge', 'no-replyei@gmail.com', '88114144496', 'whitehat monthly SEO plans', 'Hi \r\n \r\nI have just analyzed  ecotecgroup.net for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Oldridge\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-10-21 03:21:52', '2021-10-21 03:21:52'),
(94, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my name’s Eric and I just ran across your website at ecotecgroup.net...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-10-22 03:28:35', '2021-10-22 03:28:35'),
(95, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ecotecgroup.net - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ecotecgroup.net, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-10-26 04:55:16', '2021-10-26 04:55:16'),
(96, 'Rapidlex Promotion', 'promotion.rapidlex@seznam.cz', '84168487237', 'RapidLex - translations done faster', 'Any Language. Any Application. RapidLex Desktop Application for Windows 7/8/10, macOS & Linux. \r\nAre you anyone working with foreign language texts? Do not waste your time by copying text from one application to other to get your translation. Just select your text in any application like Outlook, Word, Powerpoint, Pdf, e-book reader or any other and double press left Ctrl key, RapidLex pops-up and your translation is done. Free 14-Day Trial without registration needed. Download at http://www.rapidlex.com/.', '2021-10-26 07:22:18', '2021-10-26 07:22:18');
INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(97, 'Mike Howard', 'no-replyei@gmail.com', '83179443758', 'Get more dofollow backlinks for ecotecgroup.net', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Howard\r\n \r\nsupport@digital-x-press.com', '2021-10-26 17:01:34', '2021-10-26 17:01:34'),
(98, 'Chau Cheung', 'noreply@googlemail.com', '84266638747', 'TREAT AS CONFIDENTIAL', 'Hello, \r\nI am contacting you regarding a transaction of mutual benefit, I am an attorney who managed a client\'s account that passed away many years ago, he passed away without any known relative. \r\nWe can work together mutually to process and receive the funds, let me know if you wish to know more about my proposal and I shall provide you with more information. \r\n \r\nRegards, \r\nMr Chau Shiu Cheung \r\nchaushuicheung@hongkongsolicitors.org', '2021-10-30 21:02:20', '2021-10-30 21:02:20'),
(99, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Instead, congrats', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with ecotecgroup.net definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out ecotecgroup.net.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-11-01 06:47:14', '2021-11-01 06:47:14'),
(100, 'Mike Berrington', 'no-replyei@gmail.com', '87782696728', 'Strengthen your Domain Authority', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nGet your ecotecgroup.net to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \r\n \r\nOn SALE: \r\nhttps://www.strictlydigital.net/product/ahrefs-dr60/ \r\n \r\n \r\nThank you \r\nMike Berrington', '2021-11-05 03:52:16', '2021-11-05 03:52:16'),
(101, 'Charlesbyday', 'georgiyfrolov1999364yfi+ul@bk.ru', '86239113872', 'Test, just a test', 'ecotecgroup.net gbuihswdiwyfuwhdiwfbujdaodhwifwjdaqidhwufwudjqvbcnxsiwdui', '2021-11-06 19:30:09', '2021-11-06 19:30:09'),
(102, 'Mike Bishop', 'no-replyei@gmail.com', '87731341253', 'Local SEO for more business', 'Hi there \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Bishop\r\n \r\nSpeed SEO Digital Agency', '2021-11-09 07:32:57', '2021-11-09 07:32:57'),
(103, 'NataHop', 'woodthighgire1988@gmail.com', '87979119495', 'Hello Admin!', 'Hey handsome! I want to be like a squeezed lemon so you can fuck me https://localchicks3.com/?u=41nkd08&o=8dhpkzk', '2021-11-10 10:07:24', '2021-11-10 10:07:24'),
(104, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ecotecgroup.net...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-11-14 14:00:48', '2021-11-14 14:00:48'),
(105, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website ecotecgroup.net...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-11-16 17:41:06', '2021-11-16 17:41:06'),
(106, 'David Holman', 'davidholman200@gmail.com', '82147673745', 'MBA', 'We are a Team of IT Experts specialized in the production of Real and authentic Documents such as Passport, Driving License , Diploma Certificates, PhD\'s, \r\nIELTS Certificate, Bachelor  degrees, NCLEX Certificate, MBA, ID Cards, SS Cards, Associate Certificate, University Certificates, Green Cards, Death Certificate, Master Degree, Working Permits, Visa\'s etc. Contact us on WhatsApp for more information +49 1590 2969018. or Email us at... documentsservicesexperts@gmail.com', '2021-11-17 12:46:37', '2021-11-17 12:46:37'),
(107, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Why not TALK with your leads?', 'My name’s Eric and I just found your site ecotecgroup.net.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-11-18 03:32:07', '2021-11-18 03:32:07'),
(108, 'Allanvesee', 'catherinesavone@schule.at', '82454165472', 'REGISTER NOW and get from $ 7997 in a day', 'Quit your job and get passive income from $ 7579 in a day >>>>>>>>>>>>>>  https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc7Wvjo&sa=D&02=08&usg=AFQjCNHj_a66ufJc5MfSABppuo4GGGxh6w   <<<<<<<<<<<', '2021-11-18 21:08:39', '2021-11-18 21:08:39'),
(109, 'Mike Duncan', 'no-replyei@gmail.com', '84187972848', 'whitehat monthly SEO plans', 'Hello \r\n \r\nI have just took an in depth look on your  ecotecgroup.net for  the current search visibility and saw that your website could use a push. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\nregards \r\nMike Duncan\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-11-20 07:57:12', '2021-11-20 07:57:12'),
(110, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - ecotecgroup.net - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across ecotecgroup.net, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=ecotecgroup.net', '2021-11-20 10:01:16', '2021-11-20 10:01:16'),
(111, 'CarlosJuing', 'car0011@alkirasecondarycollege.com.au', '89863566458', 'Bitcoin trading bot that brings Elon Musk from $ 13000 per day', 'A few weeks ago, Elon Musk, in an interview, accidentally blabbed about a cryptocurrency trading robot that brings him passive income from $ 13,000 to $ 135,000 per day and asked to remove this moment from the video after filming. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8aMsu&sa=D&56=33&usg=AFQjCNGiMsVvcKCjtUl1s1o9fbbu24TnPA \r\nBut the operator who filmed all this remembered the name of the trading robot and tried to make money. \r\nOn the same day, he made a deposit of $ 500 and launched a trading robot and after 3 hours his account had $ 3750 and a week later $ 563700. \r\nOn the robot, you earn in the currency of your country, Europe - EUR, Australia - AUD, Canada - CAD, Sweden - SEC and so on. \r\nHurry up to register as after the influx of new users, the administrators decided to stop registering new users from next week. \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8aMsu&sa=D&21=63&usg=AFQjCNGiMsVvcKCjtUl1s1o9fbbu24TnPA', '2021-11-20 21:12:57', '2021-11-20 21:12:57'),
(112, 'Roberts Zuluf', 'rfzuluf@gmail.com', '85555335188', 'Trying to Reach you', 'Hi \r\nHow are you? I wanted to reach out to you and verify that email was a good way to reach you or We can discuss this via the telephone,WhatsApp only. +90 555 140 8097 or contact@frzuluf.com \r\nI count in your honor for a quick response for a good deal. \r\nRegards, \r\nRoberts Zuluf', '2021-11-22 21:09:24', '2021-11-22 21:09:24'),
(113, 'Mike Atcheson', 'no-replyei@gmail.com', '82351619848', 'Get more dofollow backlinks for ecotecgroup.net', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Atcheson\r\n \r\nsupport@digital-x-press.com', '2021-11-27 20:24:56', '2021-11-27 20:24:56'),
(114, 'DavidPaula', 'ulrich.hammerl@t-online.de', '85513187956', '?-:+ Binance: The Best Trading Robot in the World )_№#', 'According to Binance, this is the best trading robot in the world :-!+ \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&74=31&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ \r\nBecause he is able to make 200% profit every day *((* \r\nFor example, you replenished your brokerage account with $ 500 (EUR, GBP, etc.) and he earned you from $ 1000 in net income within a day *=!% \r\nBinance recommends using this particular trading robot for automated trading ))*+ \r\nhttps://www.google.com/url?q=https%3A%2F%2Fvk.cc%2Fc8qvzi&sa=D&37=29&usg=AFQjCNH2QAwQV6sbS1u0SgHiVXKZSKhcKQ', '2021-11-28 22:34:31', '2021-11-28 22:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_20_135422_create_subscribers_table', 1),
(5, '2021_04_20_140124_create_candidates_table', 2),
(6, '2021_04_20_141441_create_messages_table', 2),
(7, '2021_04_22_132548_create_settings_table', 3),
(8, '2021_04_22_155756_create_abouts_table', 4),
(9, '2021_04_22_173428_create_sliders_table', 5),
(11, '2021_04_24_225708_create_about_sections_table', 6),
(12, '2021_04_24_231208_create_park_view_sections_table', 7),
(13, '2021_04_24_232228_create_feature_sections_table', 8),
(14, '2021_04_24_233636_create_features_table', 9),
(15, '2021_04_25_000048_create_park_views_table', 10),
(16, '2021_04_25_005818_create_galleries_table', 11),
(17, '2021_04_25_011304_create_services_table', 12),
(18, '2021_04_25_014452_create_facilities_table', 13),
(19, '2021_04_25_020318_create_consultants_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `park_views`
--

CREATE TABLE `park_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `square` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `park_views`
--

INSERT INTO `park_views` (`id`, `title`, `description1`, `description2`, `square`, `building`, `address`, `location_title`, `location_description`, `image1`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(1, 'PARK VIEW', 'WITH A FUTURISTIC DESIGN THAT COMBINES BOTH MODERNITY AND BEAUTY THANKS TO THE GLASS FACADES AND GREEN SPACES THAT COVER THE BUILDING.', 'Aligning with the New Capital as a progressive and smart city, ECOTEC Developments is introducing the eminent German concept and standards, where the building aims to provide its investors, owners and tenants an unprecedented technology and modern designs to offer a new business experience.\r\n\r\nNot only is the innovation reflected in the design but also in the construction technology implemented where we have relied on German construction technology, making it the first project in New Capital with German standards in the new capital making ParkView the first Egyptian-German cooperation in New Capital. Highlighting on originality, we have partnered with Arc2lab Engineering, with its long business presence in Germany, the Middle East, Africa and the Gulf countries.', '3762 SQ M', '3 BASEMENTS, GROUND FLOOR, 10 TYPICAL FLOORS', 'MAIN ROAD IN DOWNTOWN, NEW CAPITAL STANDS PARKVIEW', 'LOCATION', 'On the main road in downtown, New Capital stands ParkView as a testimonial to our vision. The Project is smartly nestled in the vibrant downtown of The New Capital, with direct view over The Green River, the largest park in the capital, alongside the main monorail, Gold’s market, Grand Mosque, Islamic conglomerate, Masa Hotel, making it in the heart of the hustle and bustle of New Capital.', 'LQnt1AZi5cCuATDgjKBfscAW5NPihYgbdyRsY0xp.png', 'siLKf5jdoEScUfiEX6cw9J0Ak4t3Tpr9mbckLvLQ.jpg', '2mYmFNoepYGbnOXVp3LqhIJsOgwnhvJXHRuXEdNW.png', '2021-04-25 00:06:58', '2021-05-23 19:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `park_view_sections`
--

CREATE TABLE `park_view_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `park_view_sections`
--

INSERT INTO `park_view_sections` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'PARKVIEW', 'Aligning with the New Capital as a progressive and smart city, ECOTEC Developments is introducing the eminent German concept and standards, where the building aims to provide its investors, owners and tenants an unprecedented technology and modern designs to offer a new business experience.\r\n\r\nWith a futuristic design that combines both modernity and beauty thanks to the glass facades and green spaces that cover the building.', '2021-04-24 23:13:41', '2021-04-24 21:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '1- PRIMARY DATA CENTER', 'Understanding that information is the heart and mind for entities and institutions, ParkView is designed with the highest levels of German security in the field of information security, in order to offer its owners and tenants a seamless and safe business experience where you can access all applications including internet routers, switches, firewalls, storage systems, servers and application- delivery controllers.', '4obWj8hN9wnlueQtlG3SlK0rULeS61dHgyZOks8v.png', '2021-04-24 23:40:51', '2021-04-24 23:40:51'),
(2, '2- BUSINESS COMMUNICATION CENTER', 'Revolutionizing pre-determined standards, ParkView allows you to step into the future thanks to its internet connected business communication center enabling you to hold all your meetings on social networks in order to save your time and facilitate your affairs.', 'D7xugNw8SLtHP4Mx9yUbDiONtHPHbUg5evbdDfAP.png', '2021-04-24 23:41:11', '2021-04-24 23:41:45'),
(3, '3- ACCESS POINT', 'No matter what business size it caters, you will find in ParkView what you need from a high-speed internet network capable of accommodating the volume of your business and trades.', 'rvaVzLmpdcgaHJNi3RueBJvclbRtYG5LpmIlF5R9.jpg', '2021-04-24 23:41:31', '2021-04-25 21:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copy` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone1` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone3` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile1` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile2` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile3` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `copy`, `address`, `email`, `phone1`, `phone2`, `phone3`, `mobile1`, `mobile2`, `mobile3`, `facebook`, `instagram`, `map`, `created_at`, `updated_at`) VALUES
(1, 'ECOTEC Developments', 'all rights reserved © 2021 | ECOTEC Developments', '1 HAFEZ RAMADAN ST., OFF MAKRAM EBIED ST., NASR CITY, CAIRO, EGYPT', 'info@ecotecgroup.net', '02 20 7000 91', '02 20 7000 92', '02 20 7000 93', '010 5030 4001', '010 5030 4002', '010 5030 4003', 'https://www.facebook.com/parkviewbyecotecdevelopments', 'https://www.instagram.com/parkviewbyecotecdevelopments', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3452.9256526870186!2d31.345225285405835!3d30.067665524431355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583e0d5474929b%3A0x49a734e1609d6319!2zMSDYrdin2YHYuCDYsdmF2LbYp9mG2Iwg2KfZhNmF2YbYt9mC2Kkg2KfZhNiz2KfYr9iz2KnYjCDZhdiv2YrZhtipINmG2LXYsdiMINmF2K3Yp9mB2LjYqSDYp9mE2YLYp9mH2LHYqeKArA!5e0!3m2!1sar!2seg!4v1621775993789!5m2!1sar!2seg', NULL, '2021-05-23 20:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title1` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `title1`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'ECOTEC', 'Developments', 'for Real Estate development is introducing an unprecedented technology\r\nin the real estate market in the New Capital', 'gXO3T6hnsvkjT3FXLPOVRuoUME20Q7l8l7cstHox.jpg', '2021-04-22 16:05:33', '2021-04-26 05:47:16'),
(3, 'ECOTEC', 'Developments', 'for Real Estate development is introducing an unprecedented technology\r\nin the real estate market in the New Capital', 'vu4ivh2zU6bLTqXqqonZrkKjqXTBopbPlemnXj5z.jpg', '2021-04-22 16:05:50', '2021-04-26 05:47:04'),
(4, 'ECOTEC', 'Developments', 'for Real Estate development is introducing an unprecedented technology\r\nin the real estate market in the New Capital', '92qcGhTJ0Dvq8THzKLLAq06wDIc9Bp4bM4jpgjpW.jpg', '2021-04-22 16:06:04', '2021-04-26 05:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'elbiheiry2@gmail.com', '2021-04-22 10:24:27', '2021-04-22 10:24:27'),
(2, 'm.elbiheiry@brandbourne.com', '2021-04-22 10:24:29', '2021-04-22 10:24:29'),
(3, 'elbiheiry3@gmail.com', '2021-04-22 10:24:32', '2021-04-22 10:24:32'),
(4, 'mohamedsasa201042@yahoo.com', '2021-04-22 10:24:37', '2021-04-22 10:24:37'),
(5, 'zeezo.gamal@gmail.com', '2021-04-25 21:55:55', '2021-04-25 21:55:55'),
(6, 'Otis_Boyer@gmail.com', '2021-06-09 20:24:57', '2021-06-09 20:24:57'),
(7, 's_sjackson@hotmail.com', '2021-06-20 09:01:11', '2021-06-20 09:01:11'),
(8, 'awheeler49@yahoo.co.uk', '2021-06-28 15:58:36', '2021-06-28 15:58:36'),
(9, 'lauramc765@aol.com', '2021-07-18 01:57:58', '2021-07-18 01:57:58'),
(10, 'darrelknutson@sandien.com', '2021-07-25 02:09:33', '2021-07-25 02:09:33'),
(11, 'a4389288078@gmail.com', '2021-07-28 20:28:10', '2021-07-28 20:28:10'),
(12, 'monicasuarez910@yahoo.com', '2021-08-26 23:34:32', '2021-08-26 23:34:32'),
(13, 'powderbrown@yahoo.com', '2021-10-06 17:37:30', '2021-10-06 17:37:30'),
(14, 'josephhaddad112@gmail.com', '2021-10-12 23:01:24', '2021-10-12 23:01:24'),
(15, 'minebirt@yahoo.com', '2021-11-08 03:57:39', '2021-11-08 03:57:39'),
(16, 'seriouspiano3@gmail.com', '2021-11-19 09:00:36', '2021-11-19 09:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ecotec', 'admin@ecotecgroup.net', NULL, '$2y$10$RpWAa4QFaaZo0xyJKk1PNuXychSHxyQIUp4cGHiiS9RZtiZXPCCKe', NULL, '2021-04-22 10:16:59', '2021-04-22 13:56:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sections`
--
ALTER TABLE `about_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_sections`
--
ALTER TABLE `feature_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `park_views`
--
ALTER TABLE `park_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `park_view_sections`
--
ALTER TABLE `park_view_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_sections`
--
ALTER TABLE `about_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `consultants`
--
ALTER TABLE `consultants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feature_sections`
--
ALTER TABLE `feature_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `park_views`
--
ALTER TABLE `park_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `park_view_sections`
--
ALTER TABLE `park_view_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
