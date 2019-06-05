-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2019 at 09:45 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posts`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `text` text NOT NULL,
  `likes` int(5) NOT NULL,
  `category` varchar(25) NOT NULL,
  `post_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `text`, `likes`, `category`, `post_image`) VALUES
(18, 'Facebook: Another three billion fake profiles cull', 'facebook-another-three-billion-fake-profiles-cull', 'Facebook has published its latest \"enforcement report\", which details how many posts and accounts it took action on between October 2018 and March 2019.\r\n\r\nDuring that six-month period, Facebook removed more than three billion fake accounts - more than ever before.\r\n\r\nMore than seven million \"hate speech\" posts were removed, also a record high.\r\n\r\nFor the first time, Facebook also reported how many deleted posts were appealed, and how many were put back online after review.\r\n\r\nIn a call with reporters on Thursday, chief executive Mark Zuckerberg hit back against numerous calls to break up Facebook, arguing its size made it possible to defend against the network\'s problems.\r\n\r\n\"I don\'t think that the remedy of breaking up the company is going to address [the problem],\" he said.\r\n\r\n\"The success of the company has allowed us to fund these efforts at a massive level. I think the amount of our budget that goes toward our safety systems... I believe is greater than Twitter\'s whole revenue this year.\"\r\n\r\n', 9, 'Tech', ''),
(19, 'Huawei: China warns of investment blow to UK over ', 'huawei-china-warns-of-investment-blow-to-uk-over-5g-ban', 'Chen Wen also told the BBC that Beijing had already \"witnessed some conscious moves\" in that direction.\r\n\r\nLast week, the US put Huawei on a list that curbs the ability of US firms to trade with it.\r\n\r\nUS officials blamed national security concerns over Huawei technology.\r\n\r\nThe UK is still reviewing its 5G telecoms policy and may allow Huawei to supply \"non-core\" 5G components, such as antenna masts.', 5, 'Tech', ''),
(21, 'Lift off for SpaceX rocket carrying 60 satellites', 'lift-off-for-spacex-rocket-carrying-60-satellites', 'The SpaceX company has begun the roll-out of its orbiting broadband system.\r\n\r\nA Falcon-9 rocket launched from Cape Canaveral in Florida late on Thursday, packed with 60 satellites capable of giving users on the ground high-speed connections to the internet.\r\n\r\nEntrepreneur Elon Musk\'s firm aims eventually to loft nearly 12,000 spacecraft for its \"Starlink\" network.', 3, 'Tech', ''),
(22, 'French Open 2019: Roger Federer into second round ', 'french-open-2019-roger-federer-into-second-round-with-straight-set-win', 'The Swiss 20-time Grand Slam winner, playing at Roland Garros for the first time in four years, beat the Italian 6-2 6-4 6-4.\r\n\r\nHe arrived to a standing ovation on Philippe Chatrier court and left with the crowd on their feet in delight.\r\n\r\nThe 37-year-old will play German lucky loser Oscar Otte, ranked 145th in the world, in the second round.\r\n\r\n\"I knew I can play very well on clay and I am very happy I did it in straight sets today,\" Federer said.\r\n\r\n\"I missed the French crowd so thanks for the warm welcome today.\"', 3, 'Sport', ''),
(23, 'Killer tornado hurls US elderly couple from home', 'killer-tornado-hurls-us-elderly-couple-from-home', 'All three fatalities were in Golden City. Another tornado carved a three-mile swathe of destruction through the state capital, Jefferson City.\r\n\r\nIt brought the death toll from US Midwest twisters this week to seven.\r\n\r\nMissouri saw two other weather-related deaths earlier this week, along with one in Oklahoma and another in Iowa.', 5, 'Weather', ''),
(24, 'Trump says Huawei could be part of trade deal', 'trump-says-huawei-could-be-part-of-trade-deal', 'The US-China trade war has escalated in recent weeks with tariff hikes and threats of more action.\r\n\r\nWashington has also targeted Huawei by putting the firm on a trade blacklist.\r\n\r\nThe US argues Huawei poses a national security risk, while Beijing accuses the US of \"bullying\" the company.\r\n\r\n\"Huawei is something that is very dangerous,\" Mr Trump told reporters at the White House on Thursday.\r\n\r\n\"You look at what they\'ve done from a security standpoint, a military standpoint. Very dangerous.\"', 1, 'Business', ''),
(25, 'Trump dismisses North Korean tests of \'some small ', 'trump-dismisses-north-korean-tests-of-some-small-weapons', 'n a tweet issued shortly after his arrival in Japan on Sunday, Mr Trump called the missiles \"small weapons\".\r\n\r\nUS National Security Adviser John Bolton said on Saturday that the tests violated UN resolutions on North Korea.\r\n\r\nPresident Trump began a state visit to Japan on Sunday by teeing off a round of golf with Prime Minister Shinzo Abe', 6, 'Politics', ''),
(26, 'Why is Trump in Japan?', 'why-is-trump-in-japan', 'The US president is there to discuss trade and security issues. North Korea\'s missile tests and nuclear programme are expected to be at the top of the agenda.\r\n\r\nJapan is considered to be one of America\'s most important allies, for security and economic reasons, and Mr Trump has sought to strengthen the relationship, making regular diplomatic trips to meet Mr Abe.\r\n\r\nTheir shared love of golf is one way they have bonded. They teed off on Sunday for a round at the Mobara course in Chiba.', 13, 'Politics', ''),
(27, 'Google thwarts Baltimore ransomware fightback', 'google-thwarts-baltimore-ransomware-fightback', 'The cyber-attack struck civil computers in Baltimore on 7 May, blocking email accounts and online payment systems.\r\n\r\nCity officials set up GMail accounts to restore communications between citizens and staff.\r\n\r\nThe mass creation of the accounts triggered Google\'s GMail defences which shut them down, believing they were being used by spammers.\r\n\r\nGoogle said it restored access to the GMail accounts once it discovered who had created them and why.', 12, 'Tech', ''),
(40, 'French Open 2019: Roger Federer makes winning retu', 'french-open-2019-roger-federer-makes-winning-retu', ' (CNN)If you were a 37-year-old at the French Open Sunday, it was a day to remember.\r\nRoger Federer made a winning return to the clay-court grand slam after a three-year absence while Nicolas Mahut added to his noteworthy accomplishments after losing the longest tennis match in history, overcoming a two-set deficit to defeat last year\'s surprise semifinalist Marco Cecchinato on the new Simonne Mathieu court.\r\nDefeat to John Isner at Wimbledon in 2010 wasn\'t the end of Mahut, rather it served as the turning point in the Frenchman\'s inspiring career. ', 1, 'Sport', 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, '1', '1', 'a@a.a', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2019-04-30 14:55:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
