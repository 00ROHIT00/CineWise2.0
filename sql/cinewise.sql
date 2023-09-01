-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 01, 2023 at 06:54 AM
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
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(5000) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `email` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customerdata`
--

INSERT INTO `customerdata` (`id`, `username`, `password`, `email`) VALUES
(1, 'rohit', 'rohith053', 'utuber053'),
(2, 'Root', 'root', 'root@gmail.com');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviedata`
--

INSERT INTO `moviedata` (`id`, `movieName`, `genre`, `description`, `link`, `rating`, `releaseYear`) VALUES
(1, 'blue beetle', 'sci-fi', 'An alien scarab chooses Jaime Reyes to be its symbiotic host, bestowing the recent college graduate with a suit of armor that\'s capable of extraordinary powers, forever changing his destiny as he becomes the superhero known as Blue Beetle.', 'https://www.youtube.com/watch?v=4wxyy8Rcz4k', '7', 2023),
(2, 'rebel moon', 'sci-fi', 'When a peaceful colony on the edge of a galaxy finds itself threatened by the armies of a tyrannical ruling force, a mysterious stranger living amongst its villagers becomes their best hope for survival.', 'https://www.youtube.com/watch?v=_rHLOXbFZtI', '4', 2023),
(3, 'invasion', 'sci-fi', 'Earth is visited by an alien species that threatens humanity\'s existence. Events unfold in real time through the eyes of five ordinary people across the globe as they struggle to make sense of the chaos unraveling around them.', 'https://www.youtube.com/watch?v=6xW8fKK_5IE', '6', 2021),
(4, 'elemental', 'sci-fi', 'Follows Ember and Wade, in a city where fire-, water-, land- and air-residents live together.', 'https://www.youtube.com/watch?v=hXzcyx9V0xw', '7', 2023),
(5, 'the flash', 'sci-fi', 'Barry Allen uses his super speed to change the past, but his attempt to save his family creates a world without super heroes, forcing him to race for his life in order to save the future.', 'https://www.youtube.com/watch?v=hebWYacbdvc', '7', 2023),
(6, 'the boys', 'sci-fi', 'A group of vigilantes set out to take down corrupt superheroes who abuse their superpowers.', 'https://www.youtube.com/watch?v=pU-Vkn_Buqw', '8', 2019),
(7, 'asteroid city', 'sci-fi', 'Following a writer on his world famous fictional play about a grieving father who travels with his tech-obsessed family to small rural Asteroid City to compete in a junior stargazing event, only to have his world view disrupted forever.', 'https://www.youtube.com/watch?v=9FXCSXuGTF4', '7', 2023),
(8, 'interstellar', 'sci-fi', 'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', '9', 2014),
(9, 'the meg', 'sci-fi', 'A group of scientists exploring the Marianas Trench encounter the largest marine predator that has ever existed - the Megalodon.', 'https://www.youtube.com/watch?v=udm5jUA-2bs', '6', 2018),
(10, 'dune', 'sci-fi', 'A noble family becomes embroiled in a war for control over the galaxy\'s most valuable asset while its heir becomes troubled by visions of a dark future.', 'https://www.youtube.com/watch?v=8g18jFHCLXk', '8', 2021),
(11, 'parasite', 'thriller', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 'https://www.youtube.com/watch?v=5xH0HfJHsaY', '8', 2019),
(12, 'the dark knight', 'thriller', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', '9', 2008),
(13, 'inception', 'thriller', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 'https://www.youtube.com/watch?v=YoHD9XEInc0', '9', 2010),
(14, 'the prestige', 'thriller', 'After a tragic accident, two stage magicians in 1890s London engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 'https://www.youtube.com/watch?v=ELq7V8vkekI', '2006', 2006),
(15, 'the departed', 'thriller', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'https://www.youtube.com/watch?v=iojhqm0JTW4', '8', 2006),
(16, 'psycho', 'thriller', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.', 'https://www.youtube.com/watch?v=Wz719b9QUqY', '8', 1960),
(17, 'joker', 'thriller', 'The rise of Arthur Fleck, from aspiring stand-up comedian and pariah to Gotham\'s clown prince and leader of the revolution.', 'https://www.youtube.com/watch?v=zAGVQLHvwOY', '8', 2019),
(18, 'shutter island', 'thriller', 'Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.', 'https://www.youtube.com/watch?v=v8yrZSkKxTA', '8', 2010),
(19, 'jurassic park', 'thriller', 'A pragmatic paleontologist touring an almost complete theme park on an island in Central America is tasked with protecting a couple of kids after a power failure causes the park\'s cloned dinosaurs to run loose.', 'https://www.youtube.com/watch?v=lc0UehYemQA', '8', 1993),
(20, 'vertigo', 'thriller', 'A former San Francisco police detective juggles wrestling with his personal demons and becoming obsessed with the hauntingly beautiful woman he has been hired to trail, who may be deeply disturbed.', 'https://www.youtube.com/watch?v=Z5jvQwwHQNY', '8', 1958),
(21, 'heart of stone', 'action', 'An intelligence operative for a shadowy global peacekeeping agency races to stop a hacker from stealing its most valuable and dangerous weapon.', 'https://www.youtube.com/watch?v=XuDwndGaCFo', '6', 2023),
(22, 'the covenant', 'action', 'During the war in Afghanistan, a local interpreter risks his own life to carry an injured sergeant across miles of grueling terrain.', 'https://www.youtube.com/watch?v=02PPMPArNEQ', '7', 2023),
(23, 'gran turismo', 'action', 'Based on the unbelievable, inspiring true story of a team of underdogs - a struggling, working-class gamer, a failed former race car driver, and an idealistic motorsport exec - who risk it all to take on the most elite sport in the world.', 'https://www.youtube.com/watch?v=GgKmhDaVo48', '7', 2023),
(24, 'sound of freedom', 'action', 'The incredible true story of a former government agent turned vigilante who embarks on a dangerous mission to rescue hundreds of children from sex traffickers.', 'https://www.youtube.com/watch?v=Rt0kp4VW1cI', '8', 2023),
(25, 'the monkey king', 'action', 'Inspired by an epic Chinese tale, translated into an action-packed comedy, a Monkey and his magical fighting Stick battle demons, dragons, gods and the greatest adversary of all - Monkey\'s ego.', 'https://www.youtube.com/watch?v=-Ao79QJNE-s', '6', 2023),
(26, 'bullet train', 'action', 'Five assassins aboard a swiftly-moving bullet train find out that their missions have something in common.', 'https://www.youtube.com/watch?v=0IOsk2Vlc4o', '7', 2023),
(27, 'jailer', 'action', 'A retired jailer goes on a manhunt to find his son\'s killers. But the road leads him to a familiar, albeit a bit darker place. Can he emerge from this complex situation successfully?', 'https://www.youtube.com/watch?v=Y5BeWdODPqo', '7', 2023),
(28, 'the equalizer 3', 'action', 'Robert McCall finds himself at home in Southern Italy but he discovers his friends are under the control of local crime bosses. ', 'https://www.youtube.com/watch?v=19ikl8vy4zs', '7', 2023),
(29, 'retribution', 'action', 'A bank executive receives a bomb threat while driving his children to school that his car will explode if they stop and get out.', 'https://www.youtube.com/watch?v=jzQn0-WH4WM', '6', 2023),
(30, 'fast x', 'action', 'Dom Toretto and his family are targeted by the vengeful son of drug kingpin Hernan Reyes.', 'https://www.youtube.com/watch?v=eoOaKN4qCKw', '6', 2023),
(31, 'oldboy', 'action', 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.', 'https://www.youtube.com/watch?v=hBNBpNcuQHI', '8', 2003),
(32, 'gladiator', 'action', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://www.youtube.com/watch?v=owK1qxDselE', '8', 2000),
(33, 'extraction 2', 'action', 'After barely surviving his grievous wounds from his mission in Dhaka, Bangladesh, Tyler Rake is back, and his team is ready to take on their next mission.', 'https://www.youtube.com/watch?v=Y274jZs5s7s', '7', 2023),
(34, 'midsommar', 'horror', 'A couple travels to Northern Europe to visit a rural hometown\'s fabled Swedish mid-summer festival. What begins as an idyllic retreat quickly devolves into an increasingly violent and bizarre competition at the hands of a pagan cult.', 'https://www.youtube.com/watch?v=1Vnghdsjmd0', '7', 2019),
(35, 'talk to me', 'horror', 'When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.', 'https://www.youtube.com/watch?v=aLAKJu9aJys', '7', 2022),
(36, 'cobweb', 'horror', 'An eight-year-old boy tries to investigate the mysterious knocking sounds that are coming from inside the walls of his house, unveiling a dark secret that his sinister parents have kept hidden from him.', 'https://www.youtube.com/watch?v=hGY0icwlDGY', '6', 2023),
(37, 'haunted mansion', 'horror', 'A single mom named Gabbie hires a tour guide, a psychic, a priest and a historian to help exorcise her newly bought mansion after discovering it is inhabited by ghosts.', 'https://www.youtube.com/watch?v=iB_1o3c19y0', '6', 2023),
(38, 'knock at the cabin', 'horror', 'While vacationing, a girl and her parents are taken hostage by armed strangers who demand that the family make a choice to avert the apocalypse.', 'https://www.youtube.com/watch?v=0wiBHEACNHs', '6', 2023),
(39, 'the exorcist', 'horror', 'When a 12 year old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.', 'https://www.youtube.com/watch?v=YDGw1MTEe9k', '8', 1973),
(40, 'm3gan', 'horror', 'A robotics engineer at a toy company builds a life-like doll that begins to take on a life of its own.', 'https://www.youtube.com/watch?v=BRb4U99OU80', '6', 2022),
(41, 'five nights at freddy\'s', 'horror', 'A troubled security guard begins working at Freddy Fazbear\'s Pizza. During his first night on the job, he realizes that the night shift won\'t be so easy to get through. Pretty soon he will unveil what actually happened at Freddy\'s.', 'https://www.youtube.com/watch?v=Z_T0o5uNrlY', '8', 2023),
(42, 'renfield', 'horror', 'Renfield, Dracula\'s henchman and inmate at the lunatic asylum for decades, longs for a life away from the Count, his various demands, and all of the bloodshed that comes with them.', 'https://www.youtube.com/watch?v=6LmO6rmDW08', '6', 2023),
(43, 'the menu', 'horror', 'A young couple travels to a remote island to eat at an exclusive restaurant where the chef has prepared a lavish menu, with some shocking surprises.', 'https://www.youtube.com/watch?v=C_uTkUGcHv4', '7', 2022),
(44, 'barbie', 'adventure', 'Barbie suffers a crisis that leads her to question her world and her existence.', 'https://www.youtube.com/watch?v=pBk4NYhWNMM', '7', 2023),
(45, 'strays', 'adventure', 'An abandoned dog teams up with other strays to get revenge on his former owner.', 'https://www.youtube.com/watch?v=26Xq6_g2r6Q', '6', 2023),
(46, 'the little mermaid', 'adventure', 'A young mermaid makes a deal with a sea witch to trade her beautiful voice for human legs so she can discover the world above water and impress a prince.', 'https://www.youtube.com/watch?v=kpGo2_d3oYE', '7', 2023),
(47, 'everything everywhere all at once', 'adventure', 'A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes and connecting with the lives she could have led.', 'https://www.youtube.com/watch?v=wxN1T1uxQ2g', '7', 2022),
(48, 'the hunger games', 'adventure', 'Katniss Everdeen voluntarily takes her younger sister\'s place in the Hunger Games: a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death.', 'https://www.youtube.com/watch?v=mfmrPu43DF8', '7', 2012),
(49, 'napoleon', 'adventure', 'The film takes a personal look at Napoleon Bonaparte\'s origins, and his swift, ruthless climb to emperor viewed through the prism of his addictive, and often volatile, relationship with his wife and one true love, Josephine.', 'https://www.youtube.com/watch?v=OAZWXUkrjPc', '8', 2023),
(50, 'stand by me', 'adventure', 'After the death of one of his friends, a writer recounts a childhood journey with his friends to find the body of a missing boy.', 'https://www.youtube.com/watch?v=jaiZ6ZQoO-Y', '8', 1986),
(51, 'kingdom of heaven', 'adventure', 'Balian of Ibelin travels to Jerusalem during the Crusades of the 12th century, and there he finds himself as the defender of the city and its people.', 'https://www.youtube.com/watch?v=KartNo8EDWY', '7', 2005),
(52, 'vacation friends', 'adventure', 'An uptight couple makes friends with a rowdy couple while on vacation in Mexico, but their friendship takes an awkward turn when they get back home.', 'https://www.youtube.com/watch?v=lMUu-ag9ofk', '6', 2021),
(53, '65', 'adventure', 'An astronaut crash lands on a mysterious planet only to discover he\'s not alone.', 'https://www.youtube.com/watch?v=bHXejJq5vr0', '6', 2023);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
