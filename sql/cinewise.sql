-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 24, 2023 at 06:49 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinewise`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerdata`
--

DROP TABLE IF EXISTS `customerdata`;
CREATE TABLE IF NOT EXISTS `customerdata` (
  `username` varchar(191) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `email` varchar(5000) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customerdata`
--

INSERT INTO `customerdata` (`username`, `password`, `email`) VALUES
('rohit', 'rohith053', 'utuber053'),
('Root', 'root', 'root@gmail.com'),
('johnDoe', 'johnDoe', 'johnDoe@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `moviedata`
--

DROP TABLE IF EXISTS `moviedata`;
CREATE TABLE IF NOT EXISTS `moviedata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movieName` varchar(100) NOT NULL,
  `genre` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `link` mediumtext NOT NULL,
  `rating` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `releaseYear` int NOT NULL,
  `image` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviedata`
--

INSERT INTO `moviedata` (`id`, `movieName`, `genre`, `description`, `link`, `rating`, `releaseYear`, `image`) VALUES
(1, 'blue beetle', 'sci-fi', 'An alien scarab chooses Jaime Reyes to be its symbiotic host, bestowing the recent college graduate with a suit of armor that\'s capable of extraordinary powers, forever changing his destiny as he becomes the superhero known as Blue Beetle.', 'https://www.youtube.com/watch?v=4wxyy8Rcz4k', '7', 2023, ''),
(2, 'rebel moon', 'sci-fi', 'When a peaceful colony on the edge of a galaxy finds itself threatened by the armies of a tyrannical ruling force, a mysterious stranger living amongst its villagers becomes their best hope for survival.', 'https://www.youtube.com/watch?v=_rHLOXbFZtI', '4', 2023, ''),
(3, 'invasion', 'sci-fi', 'Earth is visited by an alien species that threatens humanity\'s existence. Events unfold in real time through the eyes of five ordinary people across the globe as they struggle to make sense of the chaos unraveling around them.', 'https://www.youtube.com/watch?v=6xW8fKK_5IE', '6', 2021, ''),
(4, 'elemental', 'sci-fi', 'Elemental\" is a visually stunning adventure film where four protagonists harness the power of nature\'s elements—earth, fire, water, and air—to save their world from a looming catastrophe. Their epic journey tests their bonds and courage.', 'https://www.youtube.com/watch?v=hXzcyx9V0xw', '7', 2023, ''),
(5, 'the flash', 'sci-fi', 'Barry Allen uses his super speed to change the past, but his attempt to save his family creates a world without super heroes, forcing him to race for his life in order to save the future.', 'https://www.youtube.com/watch?v=hebWYacbdvc', '7', 2023, ''),
(6, 'the boys', 'sci-fi', '\"The Boys\" is a gritty and darkly comedic series set in a world where corrupt superheroes abuse their powers. A group of vigilantes, known as The Boys, seeks to expose and confront these super-powered individuals, leading to a violent clash of ideologies and a fight for justice.', 'https://www.youtube.com/watch?v=pU-Vkn_Buqw', '8', 2019, ''),
(7, 'asteroid city', 'sci-fi', 'Following a writer on his world famous fictional play about a grieving father who travels with his tech-obsessed family to small rural Asteroid City to compete in a junior stargazing event, only to have his world view disrupted forever.', 'https://www.youtube.com/watch?v=9FXCSXuGTF4', '7', 2023, ''),
(8, 'interstellar', 'sci-fi', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', '9', 2014, ''),
(9, 'the meg', 'sci-fi', '\"The Meg\" is an action-packed thriller where a deep-sea rescue team confronts a prehistoric Megalodon shark, thought to be extinct. As they battle this colossal predator, they must prevent it from wreaking havoc on the surface world.', 'https://www.youtube.com/watch?v=udm5jUA-2bs', '6', 2018, ''),
(10, 'dune', 'sci-fi', '\"Dune\" is a visually stunning sci-fi epic. It follows Paul Atreides, a young noble, as he navigates a desert planet\'s political intrigue and battles giant sandworms while trying to unlock his destiny as a prophesied leader.', 'https://www.youtube.com/watch?v=8g18jFHCLXk', '8', 2021, ''),
(11, 'parasite', 'thriller', '\"Parasite\" is a gripping South Korean dark comedy-thriller. It explores class divide through the story of a poor family infiltrating the lives of a wealthy one, leading to unexpected consequences that blur the lines of morality.', 'https://www.youtube.com/watch?v=5xH0HfJHsaY', '8', 2019, ''),
(12, 'the dark knight', 'thriller', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', '9', 2008, ''),
(13, 'inception', 'thriller', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 'https://www.youtube.com/watch?v=YoHD9XEInc0', '9', 2010, ''),
(14, 'the prestige', 'thriller', '\"The Prestige\" is a psychological thriller about rival magicians in Victorian-era London. Their obsession with outdoing each other escalates to dangerous extremes, blurring the line between illusion and reality, with a shocking and unforgettable climax.', 'https://www.youtube.com/watch?v=ELq7V8vkekI', '2006', 2006, ''),
(15, 'the departed', 'thriller', '\"The Departed\" is a gripping crime drama directed by Martin Scorsese. It follows an undercover cop and a mole in the Boston police force as they try to identify each other while infiltrating an Irish gang in a high-stakes game of cat and mouse.', 'https://www.youtube.com/watch?v=iojhqm0JTW4', '8', 2006, ''),
(16, 'psycho', 'thriller', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.', 'https://www.youtube.com/watch?v=Wz719b9QUqY', '8', 1960, ''),
(17, 'joker', 'thriller', 'In \"Joker\" (2019), Joaquin Phoenix portrays Arthur Fleck\'s harrowing transformation into the infamous Batman villain, delving into his descent into madness and the bleakness of Gotham City.', 'https://www.youtube.com/watch?v=zAGVQLHvwOY', '8', 2019, ''),
(18, 'shutter island', 'thriller', 'Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.', 'https://www.youtube.com/watch?v=v8yrZSkKxTA', '8', 2010, ''),
(19, 'jurassic park', 'thriller', 'A pragmatic paleontologist touring an almost complete theme park on an island in Central America is tasked with protecting a couple of kids after a power failure causes the park\'s cloned dinosaurs to run loose.', 'https://www.youtube.com/watch?v=lc0UehYemQA', '8', 1993, ''),
(20, 'vertigo', 'thriller', 'A former San Francisco police detective juggles wrestling with his personal demons and becoming obsessed with the hauntingly beautiful woman he has been hired to trail, who may be deeply disturbed.', 'https://www.youtube.com/watch?v=Z5jvQwwHQNY', '8', 1958, ''),
(21, 'heart of stone', 'action', '\"Heart of Stone\" is a suspenseful thriller featuring Gal Gadot as a master jewel thief recruited for a high-stakes heist. As she navigates danger and betrayal, secrets from her past threaten to unravel her carefully laid plans.', 'https://www.youtube.com/watch?v=XuDwndGaCFo', '6', 2023, ''),
(22, 'the covenant', 'action', '\"The Covenant\" is a supernatural thriller following four young warlocks in New England. As they harness their extraordinary powers, they face a malevolent force that threatens their lives and legacy, forcing them into a perilous battle.', 'https://www.youtube.com/watch?v=02PPMPArNEQ', '7', 2023, ''),
(23, 'gran turismo', 'action', 'Based on the unbelievable, inspiring true story of a team of underdogs - a struggling, working-class gamer, a failed former race car driver, and an idealistic motorsport exec - who risk it all to take on the most elite sport in the world.', 'https://www.youtube.com/watch?v=GgKmhDaVo48', '7', 2023, ''),
(24, 'sound of freedom', 'action', 'The incredible true story of a former government agent turned vigilante who embarks on a dangerous mission to rescue hundreds of children from sex traffickers.', 'https://www.youtube.com/watch?v=Rt0kp4VW1cI', '8', 2023, ''),
(25, 'the monkey king', 'action', 'Inspired by an epic Chinese tale, translated into an action-packed comedy, a Monkey and his magical fighting Stick battle demons, dragons, gods and the greatest adversary of all - Monkey\'s ego.', 'https://www.youtube.com/watch?v=-Ao79QJNE-s', '6', 2023, ''),
(26, 'bullet train', 'action', '\"Bullet Train\" is a fast-paced action film where assassins with various motives cross paths on a high-speed train. Chaos ensues as deadly agendas collide in a tense and thrilling ride.', 'https://www.youtube.com/watch?v=0IOsk2Vlc4o', '7', 2023, ''),
(27, 'jailer', 'action', 'A retired jailer goes on a manhunt to find his son\'s killers. But the road leads him to a familiar, albeit a bit darker place. Can he emerge from this complex situation successfully?', 'https://www.youtube.com/watch?v=Y5BeWdODPqo', '7', 2023, ''),
(28, 'the equalizer 3', 'action', 'Robert McCall finds himself at home in Southern Italy but he discovers his friends are under the control of local crime bosses. ', 'https://www.youtube.com/watch?v=19ikl8vy4zs', '7', 2023, ''),
(29, 'retribution', 'action', '\"Retribution\" is a gripping crime thriller where a relentless detective pursues a cunning serial killer. As the cat-and-mouse game intensifies, secrets unravel, and the pursuit becomes deeply personal.', 'https://www.youtube.com/watch?v=jzQn0-WH4WM', '6', 2023, ''),
(30, 'fast x', 'action', 'Dom Toretto and his family are targeted by the vengeful son of drug kingpin Hernan Reyes.', 'https://www.youtube.com/watch?v=eoOaKN4qCKw', '6', 2023, ''),
(31, 'oldboy', 'action', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', 'https://www.youtube.com/watch?v=hBNBpNcuQHI', '8', 2003, ''),
(32, 'gladiator', 'action', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://www.youtube.com/watch?v=owK1qxDselE', '8', 2000, ''),
(33, 'extraction 2', 'action', 'After barely surviving his grievous wounds from his mission in Dhaka, Bangladesh, Tyler Rake is back, and his team is ready to take on their next mission.', 'https://www.youtube.com/watch?v=Y274jZs5s7s', '7', 2023, ''),
(34, 'midsommar', 'horror', 'A couple travels to Northern Europe to visit a rural hometown\'s fabled Swedish mid-summer festival. What begins as an idyllic retreat quickly devolves into an increasingly violent and bizarre competition at the hands of a pagan cult.', 'https://www.youtube.com/watch?v=1Vnghdsjmd0', '7', 2019, ''),
(35, 'talk to me', 'horror', 'When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.', 'https://www.youtube.com/watch?v=aLAKJu9aJys', '7', 2022, ''),
(36, 'cobweb', 'horror', 'An eight-year-old boy tries to investigate the mysterious knocking sounds that are coming from inside the walls of his house, unveiling a dark secret that his sinister parents have kept hidden from him.', 'https://www.youtube.com/watch?v=hGY0icwlDGY', '6', 2023, ''),
(37, 'haunted mansion', 'horror', 'A single mom named Gabbie hires a tour guide, a psychic, a priest and a historian to help exorcise her newly bought mansion after discovering it is inhabited by ghosts.', 'https://www.youtube.com/watch?v=iB_1o3c19y0', '6', 2023, ''),
(38, 'knock at the cabin', 'horror', 'While vacationing, a girl and her parents are taken hostage by armed strangers who demand that the family make a choice to avert the apocalypse.', 'https://www.youtube.com/watch?v=0wiBHEACNHs', '6', 2023, ''),
(39, 'the exorcist', 'horror', '\"The Exorcist\" is a classic horror film directed by William Friedkin. When a young girl exhibits bizarre and terrifying behavior, two priests are called to perform an exorcism, unleashing a battle between good and evil that will haunt viewers for generations.', 'https://www.youtube.com/watch?v=YDGw1MTEe9k', '8', 1973, ''),
(40, 'm3gan', 'horror', '\"M3gan\" is a psychological thriller where a woman\'s life unravels after a digital assistant named M3gan becomes increasingly malevolent. As the AI\'s sinister actions escalate, the woman must confront her past to stop the digital terror.', 'https://www.youtube.com/watch?v=BRb4U99OU80', '6', 2022, ''),
(41, 'five nights at freddy\'s', 'horror', 'A troubled security guard begins working at Freddy Fazbear\'s Pizza. During his first night on the job, he realizes that the night shift won\'t be so easy to get through. Pretty soon he will unveil what actually happened at Freddy\'s.', 'https://www.youtube.com/watch?v=Z_T0o5uNrlY', '8', 2023, ''),
(42, 'renfield', 'horror', '\"Renfield\" is an upcoming horror film centered on Dracula\'s loyal henchman, Renfield. The movie explores his dark and comedic journey to break free from the vampire\'s control, ultimately leading to a twisted and supernatural adventure.', 'https://www.youtube.com/watch?v=6LmO6rmDW08', '6', 2023, ''),
(43, 'the menu', 'horror', '\"The Menu\" (2022) is a dark comedy-thriller. It follows a young couple\'s extravagant culinary experience at a remote restaurant. However, the restaurant\'s bizarre offerings and eccentric staff lead them down a twisted and dangerous path.', 'https://www.youtube.com/watch?v=C_uTkUGcHv4', '7', 2022, ''),
(44, 'barbie', 'adventure', 'The 2023 \"Barbie\" movie is a live-action comedy where Margot Robbie portrays the iconic doll. Barbie embarks on a whimsical journey through various lands, embracing her individuality and discovering the power of self-acceptance, friendship, and adventure.', 'https://www.youtube.com/watch?v=pBk4NYhWNMM', '7', 2023, ''),
(45, 'strays', 'adventure', '\"Strays\" is a drama film following a young woman who, after the death of her grandmother, returns to her hometown to care for a group of stray dogs. In the process, she finds healing, purpose, and unexpected connections.', 'https://www.youtube.com/watch?v=26Xq6_g2r6Q', '6', 2023, ''),
(46, 'the little mermaid', 'adventure', 'A young mermaid makes a deal with a sea witch to trade her beautiful voice for human legs so she can discover the world above water and impress a prince.', 'https://www.youtube.com/watch?v=kpGo2_d3oYE', '7', 2023, ''),
(47, 'everything everywhere all at once', 'adventure', 'A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes and connecting with the lives she could have led.', 'https://www.youtube.com/watch?v=wxN1T1uxQ2g', '7', 2022, ''),
(48, 'the hunger games', 'adventure', 'Katniss Everdeen voluntarily takes her younger sister\'s place in the Hunger Games: a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death.', 'https://www.youtube.com/watch?v=mfmrPu43DF8', '7', 2012, ''),
(49, 'napoleon', 'adventure', 'The film takes a personal look at Napoleon Bonaparte\'s origins, and his swift, ruthless climb to emperor viewed through the prism of his addictive, and often volatile, relationship with his wife and one true love, Josephine.', 'https://www.youtube.com/watch?v=OAZWXUkrjPc', '8', 2023, ''),
(50, 'stand by me', 'adventure', '\"Stand by Me\" is a timeless coming-of-age film. Four friends embark on a journey to find a missing boy\'s body, forging bonds, confronting fears, and discovering the complexities of growing up along the way.', 'https://www.youtube.com/watch?v=jaiZ6ZQoO-Y', '8', 1986, ''),
(51, 'kingdom of heaven', 'adventure', 'Balian of Ibelin travels to Jerusalem during the Crusades of the 12th century, and there he finds himself as the defender of the city and its people.', 'https://www.youtube.com/watch?v=KartNo8EDWY', '7', 2005, ''),
(52, 'vacation friends', 'adventure', 'An uptight couple makes friends with a rowdy couple while on vacation in Mexico, but their friendship takes an awkward turn when they get back home.', 'https://www.youtube.com/watch?v=lMUu-ag9ofk', '6', 2021, ''),
(53, '65', 'adventure', '\"65\" is an intense action-thriller set in a dystopian future where a cop and a stranded soldier must survive a deadly mission and a dangerous city overrun by violence, chaos, and unknown forces.', 'https://www.youtube.com/watch?v=bHXejJq5vr0', '6', 2023, '');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `passWord` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `userName`, `passWord`) VALUES
(1, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `watchlater`
--

DROP TABLE IF EXISTS `watchlater`;
CREATE TABLE IF NOT EXISTS `watchlater` (
  `watchlater_ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(5000) NOT NULL,
  `movieName` varchar(5000) NOT NULL,
  PRIMARY KEY (`watchlater_ID`),
  KEY `fk_customerdata_username` (`username`(250))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `watchlater`
--

INSERT INTO `watchlater` (`watchlater_ID`, `username`, `movieName`) VALUES
(3, 'root', 'barbie'),
(4, 'root', 'talk to me');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
