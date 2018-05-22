-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2016 at 03:56 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_seip_ecommerce33`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(3) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email_address`, `password`) VALUES
(1, 'Seip Ecommerce 33', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`) VALUES
(3, 'Books', 'well', 1),
(4, 'Electronics', 'well', 1),
(6, 'Foods', 'well foods', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `first_name`, `last_name`, `email_address`, `password`, `address`, `phone_number`) VALUES
(1, 'Sahadat', 'Hossain', 'hossain@gmail.com', '123456', 'Sonir Akhra', '1715141214'),
(2, 'Sohel ', 'Rana', 'admin@gmail.com', '123', 'Mirpur - 10', '01714151213');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` int(3) NOT NULL,
  `image_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `image_file`) VALUES
(2, 'images/author.jpg'),
(3, 'images/Pilgrims-Hospice-Duck.jpg'),
(4, 'images/10398697_1543603572619376_779336614453531375_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE `tbl_manufacturer` (
  `manufacturer_id` int(3) NOT NULL,
  `manufacturer_name` varchar(255) NOT NULL,
  `manufacturer_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_description`, `publication_status`) VALUES
(1, 'Sony', 'well', 1),
(2, 'Samsung', '', 1),
(3, 'Htc', '', 1),
(4, 'Humaun Ahammed', '', 1),
(5, 'Haque Group', '', 1),
(6, 'Nabisko', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category_id` int(3) NOT NULL,
  `manufacturer_id` int(3) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `manufacturer_id`, `product_price`, `product_quantity`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`) VALUES
(2, 'demo product', 3, 1, 123.00, 12, 'xdcxc vzxc zcxv zcv x', 'cz xc zxc zxcvzxcv zxc ', '../assets/product_images/author.jpg', 1),
(3, 'X-peria z5', 4, 1, 41000.00, 50, 'Twice a year every year, Sony issues a new flagship Android smartphone. This rapid pace has propelled us from 2013â€™s Xperia Z to todayâ€™s Xperia Z5, across five generations of whatâ€™s been fundamentally the same formula: distinctive design, long battery life, the latest Qualcomm processor, and a great camera sensor. Every new iteration has chiseled ', 'Ever since AT&Tâ€™s unhappy experience with the Xperia Ion in 2012, US carriers have been reluctant to invest much time and effort into Sony products. Even after all these years, we only get token efforts like Verizonâ€™s Xperia Z4v, which was canceled a few days ago after a protracted delay. Sony is absent from the mainstream US smartphone market, which is a calamitous situation given the quality of its smartphones.\r\n\r\nLast yearâ€™s Xperia Z3 and Z3 Compact were among the best Android devices introduced by any manufacturer, and this yearâ€™s Z5 family promises even more. The new handsets are fully loaded with the latest technology â€” including a fast fingerprint sensor built into the power button â€” and they introduce the first new imaging sensor to the Z series since the original. Sonyâ€™s bumped the resolution up by 15 percent to 23 megapixels and is proclaiming the new Z5 camera the best mobile camera that it has ever made. Plus itâ€™s done it without adding an unsightly camera bump like everyone else is doing this year.', '../assets/product_images/1.jpg', 1),
(4, 'X-peria z3', 4, 1, 36000.00, 20, 'Ever since AT&Tâ€™s unhappy experience with the Xperia Ion in 2012, US carriers have been reluctant to invest much time and effort into Sony products. Even after all these years, we only get token efforts like Verizonâ€™s Xperia Z4v, which was canceled a few days ago after a protracted delay. Sony is absent from the mainstream US smartphone market, which is a calamitous situation given the quality of its smartphones.', '"Every Xperia Z that Sony creates is a minor engineering miracle"\r\n\r\nSony never gets enough credit for this, so Iâ€™m going to reiterate it: the Xperia Z phones are, by far, the most attractive waterproof devices out there. Whether youâ€™re looking at the Z5 or Z5 Compact, you get a slim, efficiently made smartphone that makes no aesthetic compromises for its added water resistance. Among the biggest changes from the original Xperia Z is the fact that the headphone jack and charging port are now out in the open, no longer needing a flappy cover to ensure the phone remains waterproof. Those changes were present in 2014â€™s Z3 generation, but now Sonyâ€™s made another improvement by also dropping the dock connector thatâ€™s been puncturing the sides of its phones for years. Sonyâ€™s proprietary docks are expensive and rarely used, so itâ€™s no great loss to anyone, and it gives the Z5 devices smoother sides that are friendlier to the touch.', '../assets/product_images/3.jpg', 1),
(5, 'X-peria z1', 4, 1, 32000.00, 10, 'A significant alteration to the sides of the new Xperias is in the shape of the power button, which is now oblong (rather than round) in order to accommodate the new fingerprint sensor. I initially thought that this positioning would be ideal for a fingerprint sensor, however Sonyâ€™s implementation has left me preferring the front-mounted version favored by Apple and Samsung or the rear-located option that Huawei uses on devices like the Mate S. The side is just too thin to fit a full-sized sensor into, resulting in the phone seeing only a thin sliver of my thumbprint and therefore producing a lot of failed readings. When the sensor does identify me correctly, itâ€™s almost too fast â€” a complaint shared by owners of the new iPhone 6S series â€” unlocking the phone when all I want to do is check the lock screen notifications.', '"The Z5 Compact offers a truly unique combination of power and pocketability"\r\n\r\nCompared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.', '../assets/product_images/images.jpg', 1),
(6, 'Galesy S7', 4, 2, 41000.00, 15, 'Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.', 'Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.', '../assets/product_images/33.jpg', 1),
(7, 'Galesy S12', 4, 2, 25000.00, 20, 'Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.', 'Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.', '../assets/product_images/34.jpg', 1),
(8, 'Galesy S3', 4, 2, 22000.00, 50, 'Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.', 'Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.Compared to other leading Android smartphones, the Xperia Z5 feels angular and rough. I prefer the smoother, softer shape of the Samsung Galaxy S6 or, alternatively, the more refined lines of the HTC One M9. Neither of them gives me a waterproof phone, but thereâ€™s something to be said about wanting to pick up and play with a smartphone, and Sonyâ€™s new Xperia just doesnâ€™t do that for me. It feels too workmanlike and functional. It still looks elegant, but it doesnâ€™t feel as pleasant as it looks. That being said, the smaller Xperia Z5 Compact has a definite advantage over all other Android smartphones, which stems from its unique combination of power and size. It has almost everything (a 1080p display would be nice) you could ask for from a modern flagship phone, but fits it into the most unobtrusive dimensions. The Compact also has thinner bezels than the regular Z5, making its compactness all the more pronounced.', '../assets/product_images/66.jpg', 1),
(9, 'Mr. Cookie', 6, 5, 50.00, 123, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '../assets/product_images/4.jpg', 1),
(10, 'New Bisket ', 6, 5, 250.00, 100, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', '../assets/product_images/10.jpg', 1),
(11, 'Nabisko new', 6, 6, 60.00, 200, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', '../assets/product_images/12.jpg', 1),
(13, 'Himu One', 3, 4, 500.00, 200, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', '../assets/product_images/25.jpg', 1),
(14, 'Vut Samogri', 3, 4, 250.00, 20, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', '../assets/product_images/22.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_cart`
--

CREATE TABLE `tbl_temp_cart` (
  `temp_cart_id` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_temp_cart`
--

INSERT INTO `tbl_temp_cart` (`temp_cart_id`, `session_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(6, 'ebjcl6qiq7ibo671qg982vf642', 14, 'Vut Samogri', 250.00, 1, '../assets/product_images/22.jpg'),
(7, 'ebjcl6qiq7ibo671qg982vf642', 11, 'Nabisko new', 60.00, 3, '../assets/product_images/12.jpg'),
(8, 'ebjcl6qiq7ibo671qg982vf642', 13, 'Himu One', 500.00, 0, '../assets/product_images/25.jpg'),
(13, 'af5kqpb6gkgentp93ol9h0juf2', 9, 'Mr. Cookie', 50.00, 1, '../assets/product_images/4.jpg'),
(16, 'af5kqpb6gkgentp93ol9h0juf2', 11, 'Nabisko new', 60.00, 1, '../assets/product_images/12.jpg'),
(17, 'af5kqpb6gkgentp93ol9h0juf2', 5, 'X-peria z1', 32000.00, 1, '../assets/product_images/images.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_temp_cart`
--
ALTER TABLE `tbl_temp_cart`
  ADD PRIMARY KEY (`temp_cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `image_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  MODIFY `manufacturer_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_temp_cart`
--
ALTER TABLE `tbl_temp_cart`
  MODIFY `temp_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
