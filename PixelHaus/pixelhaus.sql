-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2026 at 09:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixelhaus`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `title` varchar(254) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `title`, `summary`, `content`, `category_id`, `member_id`, `image_id`, `published`) VALUES
(01, 'Rack Cards', 'Professional rack card printing for promoting businesses, services, menus, and special offers', 'Custom rack cards sized at 3.74" x 8.27" are designed to deliver bold, compact marketing messages in high-visibility spaces like counters and lobbies. With 13 paper stock options, vivid full-color printing, single- or double-sided layouts, and optional rounded corners or holders, they provide a polished and effective way to promote your brand.', 1, 101, 001, 1),
(02, 'Loyalty Cards', 'Standard-sized loyalty cards designed to reward repeat customers with perks, discounts, and special offers', 'Custom loyalty cards (3.5" x 2") help encourage repeat business by rewarding customers with special perks or discounts. Available in assorted paper stocks with standard, premium, or premium plus thickness, these punch or stamp cards can be customized with square or rounded corners. Easy to design using ready-made templates, they provide a fun, professional way to build customer loyalty while keeping your brand in customers’ wallets.', 1, 101, 002, 1),
(03, 'Door Hangers', 'Full-color custom door hangers designed for targeted, affordable neighborhood marketing campaigns', 'Custom door hangers are a cost-effective and highly visible way to promote your business directly to homes and neighborhoods. Available in 3.5" x 8.5" and 4.5" x 11" sizes, with matte, glossy, or durable plastic options, they feature sharp full-color printing and optional perforated tear-off tabs. Choose from multiple thicknesses and quantities ranging from 50 to 10,000+. Easy to customize using editable templates or your own design, these door hangers are built to be eye-catching, durable, and ready to distribute.', 1, 101, 003, 1),
(04, 'Presentation Folders', 'Fully customizable presentation folders designed to organize documents while showcasing your brand professionally', 'Custom presentation folders combine organization and branding in one sleek package. Available in 3 sizes with multiple paper stock options, they can be fully customized inside and out, including pockets and a built-in business card slot. Choose matte or glossy finishes, upgrade to premium thickness, or add eye-catching foil accents for a polished look. With quantities from 100 to 20,000, these folders are ideal for meetings, conferences, and events where making a strong impression matters.', 1, 101, 004, 1),
(05, 'Flyers', 'High-quality custom flyers available in multiple sizes and paper options for fast, effective business promotion', 'Custom flyers offer a quick and impactful way to promote events, special offers, and businesses. Available in 11 sizes with glossy, matte, uncoated, or recycled paper stocks and 6 thickness options, they feature sharp full-color printing with optional double-sided layouts. Order quantities from 25 to 20,000 and add clear holders for select sizes. Easy to customize using professional templates or your own design, these flyers deliver versatile, attention-grabbing marketing wherever you distribute them.', 1, 101, 005, 1),
(06, 'Tabletop Signs', 'Durable, full-color tabletop signs with a built-in stand for eye-catching promotions and professional displays', 'Custom tabletop signs are a simple yet impactful way to highlight promotions, events, or important information. Available in 2 sizes and pre-assembled with a built-in stand, they’re lightweight, durable, and easy to set up anywhere—from trade shows to retail counters. Featuring vibrant full-color printing and fully customizable designs, these signs help you create a polished, professional display that grabs attention instantly.', 1, 101, 006, 1),
(07, 'Forrest Gump', 'A heartfelt drama about a simple man whose extraordinary life intersects with key moments in American history', 'Forrest Gump follows Forrest, a kind-hearted man from Alabama whose optimism and determination lead him through remarkable experiences—from football and war to business success. Starring Tom Hanks and directed by Robert Zemeckis, the film delivers a powerful story about love, destiny, and perseverance.', 2, 102, 007, 1),
(08, 'The Healer', 'An uplifting drama about a troubled young man who discovers he has the power to heal others', 'The Healer follows Alec, a man struggling with debt and direction in life, who learns he has an unexpected gift—the ability to heal the sick. As he comes to terms with his newfound purpose, he forms meaningful connections that change his outlook forever. Starring Oliver Jackson-Cohen and directed by Paco Arango, the film delivers a heartfelt story about hope, redemption, and believing in second chances.', 2, 102, 008, 1),
(09, 'The Wrecking Crew', 'An upcoming action-comedy centered on an unlikely duo pulled into a dangerous high-stakes mission', 'The Wrecking Crew is a fast-paced action-comedy that follows two mismatched characters forced to work together on a chaotic and dangerous assignment. Blending sharp humor with explosive action, the film delivers high-energy sequences and unexpected twists as the pair navigate crime, betrayal, and survival.', 2, 102, 009, 1),
(10, 'The Stand', 'A post-apocalyptic novel about the battle between good and evil after a deadly pandemic wipes out most of humanity', 'The Stand by Stephen King follows survivors of a catastrophic plague as they form opposing factions led by the benevolent Mother Abagail and the sinister Randall Flagg. Set in a devastated America, the story explores morality, power, faith, and the resilience of humanity in the face of overwhelming darkness.', 2, 102, 010, 1),
(11, 'Jane Eyre', 'A classic coming-of-age novel about an orphaned girl’s journey toward independence, love, and self-respect', 'Jane Eyre by Charlotte Brontë follows Jane, an intelligent and strong-willed young woman who overcomes hardship and injustice to build a life of dignity and purpose. As a governess at Thornfield Hall, she develops a deep connection with the mysterious Mr. Rochester, leading to a powerful story of romance, morality, and personal strength.', 2, 102, 011, 1),
(12, 'Pandemic (The Extinction Files #1)', 'A fast-paced science thriller about a geneticist racing to stop a deadly global pandemic', 'Pandemic by A.G. Riddle follows Dr. Peyton Shaw as she investigates a mysterious outbreak linked to ancient human DNA. As the virus spreads worldwide, shocking discoveries reveal a deeper conspiracy that could change humanity’s future. Blending cutting-edge science with high-stakes suspense, this novel launches The Extinction Files series with action, intrigue, and global stakes.', 2, 102, 012, 1),
(13, 'Nina Ricci #2', 'A fashion-forward illustration by Christina Zimpel blending elegance and contemporary style', 'Nina Ricci #2 is an illustration by Christina Zimpel, who works across fashion, beauty, and hospitality projects. With experience as an art director for Vogue and contributions to The New York Times, Vanity Fair, and Architectural Digest, Zimpel creates refined illustrations that combine sophisticated design with modern aesthetic sensibilities.', 3, 103, 013, 1),
(14, 'Faux', 'A contemporary portrait illustration reflecting Gill Button’s refined, fashion-inspired style', 'Faux is an illustration by Gill Button, known for her expressive oil portrait paintings. Originally working digitally for major brands, she later gained recognition for her hand-painted, fashion-focused portraits showcased through her personal projects and social media.', 3, 103, 014, 1),
(15, 'Lou', 'A figurative illustration by Rosie McGuinness showcasing her distinctive hand-drawn style', 'Lou is a hand-drawn illustration by Rosie McGuinness, created using pen, inks, and paints. Known for her figurative drawings informed by womenswear and life drawing, McGuinness has worked with clients like i-D, The New York Times, Dior, and the V&A Museum, while continuing to explore personal projects that highlight her expressive, fashion-inspired style.', 3, 103, 015, 1),
(16, 'Ladies who Lunch', 'A bold, punk-inspired fashion illustration by Blair Breitenstein capturing the glamour and grit of high-fashion life', 'Ladies Who Lunch is an illustration by Blair Breitenstein, created with markers, pastels, and pen. Known for her spontaneous, punk-rock aesthetic, Breitenstein depicts the world of luxury fashion with edgy, expressive strokes. Her work has attracted clients such as Saks, Prada, Mac Cosmetics, Vogue, and Harper’s Bazaar.', 3, 103, 016, 1),
(17, 'Miss Piggy', 'A meticulously detailed ballpoint pen illustration by Cary Kwok exploring fashion and expressive portraiture', 'Miss Piggy is an illustration by Cary Kwok, renowned for his intricate ballpoint pen drawings. With a background in fashion from Central Saint Martins, Kwok depicts period fashions, hairstyles, footwear, and the human form with precision. His work has been exhibited internationally at galleries including Galerie Emanuel Perrotin, Hauser & Wirth, and Tate Britain, and featured in prominent art publications.', 3, 103, 017, 1),
(18, 'Four Guys Walking 2017', 'A dynamic fashion illustration by Richard Haines capturing the style and attitude of New York trendsetters', 'Four Guys Walking (2017) is an illustration by Richard Haines, documenting the clothing and energy of everyday and high-fashion figures in New York. Known for sketching front row at fashion shows, Haines combines art and fashion to capture nuances often missed by photography. His clients include Prada, Dries Van Noten, Vogue, Hermès, Apple, Tiffany & Co., The New York Times, and more.', 3, 103, 018, 1),
(19, 'Antelope Canyon Seahorse', 'A captivating photo of the seahorse-shaped rock formation in Antelope Canyon, Arizona', 'Antelope Canyon Seahorse by Craig Goodwin captures the unique seahorse-shaped sandstone formation in Page, Arizona. The photograph highlights the flowing textures and vibrant layers of the canyon walls. Goodwin’s composition emphasizes the natural curves and intricate details of this striking geological feature.', 4, 103, 019, 1),
(20, 'Mossy Multnomah', 'A vibrant spring photograph of Multnomah Falls draped in lush moss and ferns in Oregon’s Columbia Gorge', 'Mossy Multnomah by Craig Goodwin captures Multnomah Falls on the Historic Columbia Gorge Highway, east of Portland, Oregon. The falls swell with spring runoff, surrounded by green mosses and ferns revived after winter. Benson Bridge spans the cascading water, adding perspective to this lush, scenic landscape.', 4, 103, 020, 1),
(21, 'Wildflower Clouds', 'A stunning photograph of Glacier National Park’s Many Glacier area blanketed with colorful wildflowers', 'Wildflower Clouds by Craig Goodwin captures the Many Glacier region in Glacier National Park, Montana. The image showcases fields of wildflowers stretching across the landscape, creating a vibrant, cloud-like effect. Goodwin’s composition emphasizes the colors, textures, and natural beauty of this iconic mountain environment.', 4, 103, 021, 1),
(22, 'Palouse Green Waves of Grain', 'A striking photograph capturing the rolling green hills and wheat fields of Washington’s Palouse region', 'Palouse Green Waves of Grain by Craig Goodwin showcases the undulating hills of Steptoe Butte State Park in eastern Washington. The image emphasizes the lush green patterns of grain fields, highlighting the unique topography and agricultural beauty of the Palouse. Goodwin’s composition captures both the scale and rhythm of this iconic landscape.', 4, 103, 022, 1),
(23, 'Mount Rainier Milky Way Eruption', 'A breathtaking night photograph of Mount Rainier aligned with the Milky Way, creating the illusion of a galactic eruption', 'Mount Rainier Milky Way Eruption by Craig Goodwin captures the view from Degge Peak above the Sunrise Visitor area of Mount Rainier National Park. In July, the Milky Way aligns with the mountain, while airglow adds ethereal colors to the night sky. Lights on the mountain trace climbers ascending to the summit, creating a dynamic interplay between human presence and the grandeur of the cosmos.', 4, 103, 023, 1),
(24, 'Lake McDonald Rock Reveal', 'A striking photograph capturing a dramatic rock formation at Lake McDonald in Glacier National Park', 'Lake McDonald Rock Reveal by Craig Goodwin showcases the unique rock formations along Lake McDonald in Glacier National Park, Montana. The composition highlights the textures and patterns of the rocks, contrasted with the serene waters of the lake. Goodwin’s photograph emphasizes the natural beauty and rugged character of this iconic landscape.', 4, 103, 024, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `description` varchar(254) DEFAULT NULL,
  `navigation` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `navigation`) VALUES
(1, 'Print', 'Inspiring graphic design', 1),
(2, 'Digital', 'Powerful pixels', 1),
(3, 'Illustration', 'Hand-drawn visual storytelling', 1),
(4, 'Photography', 'Capturing the moment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `file` varchar(254) DEFAULT NULL,
  `alt` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `file`, `alt`) VALUES
(001, 'RackCard.png', 'Rack card for Serene Spa'),
(002, 'LoyaltyCard.png', 'Loyalty card for Hair by James Hale'),
(003, 'DoorHanger.png', 'Door hanger for Edyson Electric'),
(004, 'PresentationFolder.png', 'Presentation folder for Zenzy'),
(005, 'Flyer.png', 'Flyer for Cafe Del Sur'),
(006, 'TabletopSign.png', 'Tabletop sign for the menu'),
(007, 'ForrestGump.png', 'Poster of Forrest Gump film'),
(008, 'TheHealer.png', 'Poster of The Healer film'),
(009, 'TheWreckingCrew.png', 'Poster of The Wrecking Crew film'),
(010, 'TheStand.png', 'Book cover of The Stand'),
(011, 'JaneEyre.png', 'Book cover of Jane Eyre'),
(012, 'Pandemic.png', 'Book cover of Pandemic (The Extinction Files #1)'),
(013, 'NinaRicci.png', 'Sideview of a woman in a coat, wearing a blue-white hat'),
(014, 'Faux.png', 'A woman in a faux fur coat'),
(015, 'Lou.png', 'A woman slouching, wearing a beige shirt and red pants'),
(016, 'LadiesWhoLunch.png', 'Three ladies posing together, wearing balenciaga coats and sunglasses'),
(017, 'MissPiggy.png', 'Miss Piggy, in blue strokes, looking at the camera'),
(018, 'FourGuys.png', 'Four guys walking, wearing 2017 trendy outfits'),
(019, 'Antelope.png', 'Worms eye view of an antelope, with a blue sky background'),
(020, 'MossyMultnomah.png', 'Mossy Multnomah Falls'),
(021, 'WildflowerClouds.png', 'Wildflower fields, with clouds in the background'),
(022, 'GreenWaves.png', 'Green landscape with waves of grass'),
(023, 'MountRainier.png', 'Mount Rainier, captured with a milky way background'),
(024, 'LakeMcdonald.png', 'Lake Mcdonald, with rocks in the foreground and mountains in the background');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `forename` varchar(254) DEFAULT NULL,
  `surname` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(254) NOT NULL,
  `joined` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `forename`, `surname`, `email`, `password`,`picture`) VALUES
(101, 'Isabelle', 'Reyes', 'ireyes@gmail.com', 'c63j-82ve-2sv9-qlb38','Isabelle.png'),
(102, 'Andrei', 'Santos', 'asantos@gmail.com', 'saq8-2f2k-3nv7-fa4k', 'Andrei.png'),
(103, 'Fe', 'Garcia', 'fgarcia@gmail.com', 'sk3r-vd92-3vn1-exm2', 'Fe.png');

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_3` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
