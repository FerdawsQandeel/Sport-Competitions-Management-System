-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 05:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `AdminID` int(11) NOT NULL,
  `AdminName` varchar(30) DEFAULT NULL,
  `AdminPhone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`AdminID`, `AdminName`, `AdminPhone`) VALUES
(10000, 'Ahmed Ibrahim', '97059281234'),
(10001, 'Youssef Abdelnour', '97059291408');

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `CoachID` int(11) NOT NULL,
  `CoachName` varchar(30) DEFAULT NULL,
  `CoachPhone` varchar(15) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`CoachID`, `CoachName`, `CoachPhone`, `TeamID`) VALUES
(100000, 'Alberto Vasco1', '97062964567', NULL),
(100001, 'Kim Kardashian1', '97023024589', 1001),
(100002, 'Alberto Vasco2', '97061064567', 1003),
(100003, 'Kim Kardashian2', '97046024589', 1004),
(100004, 'Alberto Vasco3', '97064567667', 1005),
(100005, 'Kim Kardashian3', '97023024589', 1006),
(100006, 'Alberto Vasco4', '97066864567', 1010),
(100007, 'Kim Kardashian4', '97098024589', 1011);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `DivisionID` int(11) NOT NULL,
  `DivisionName` varchar(30) DEFAULT NULL,
  `IndoorOutdoor` varchar(50) DEFAULT NULL,
  `TeamMax` int(11) DEFAULT NULL,
  `PlayerMax` int(11) DEFAULT NULL,
  `WinningTeam` int(11) DEFAULT NULL,
  `SeasonEndDate` date DEFAULT NULL,
  `SportID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`DivisionID`, `DivisionName`, `IndoorOutdoor`, `TeamMax`, `PlayerMax`, `WinningTeam`, `SeasonEndDate`, `SportID`) VALUES
(100, 'A', 'Outdoor', 16, 12, 1001, '2017-03-28', 1),
(101, 'B', 'Outdoor', 16, 12, 1004, '2017-03-28', 1),
(102, 'A', 'Indoor', 16, 10, 1012, '2017-04-20', 2),
(103, 'B', 'Indoor', 16, 10, 1015, '2017-04-20', 2);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `GameID` int(11) NOT NULL,
  `Team1` int(11) DEFAULT NULL,
  `Team2` int(11) DEFAULT NULL,
  `Venue` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Team1Score` int(11) DEFAULT NULL,
  `Team2Score` int(11) DEFAULT NULL,
  `Winner` varchar(30) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuestID` int(11) NOT NULL,
  `GuestEmail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuestID`, `GuestEmail`) VALUES
(10000000, 'xyz@gmail.com'),
(10000001, 'pqr@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `PlayerID` int(11) NOT NULL,
  `PlayerName` varchar(30) DEFAULT NULL,
  `PlayerPhone` varchar(15) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`PlayerID`, `PlayerName`, `PlayerPhone`, `TeamID`) VALUES
(1000000, 'PlayerA', '97062911456', 1000),
(1000001, 'PlayerB', '97062861456', 1000),
(1000002, 'PlayerC', '97062991456', 1001),
(1000003, 'PlayerD', '97062881456', 1001),
(1000004, 'PlayerE', '97062771456', 1003),
(1000005, 'PlayerF', '97062661456', 1003),
(1000006, 'PlayerG', '97062551456', 1004),
(1000007, 'PlayerH', '97062561456', 1004),
(1000008, 'PlayerI', '97062331456', 1005),
(1000009, 'PlayerJ', '97062221456', 1005),
(1000010, 'PlayerK', '97062111456', 1006),
(1000011, 'PlayerL', '97062461456', 1006),
(1000012, 'PlayerM', '97062781456', 1010),
(1000013, 'PlayerN', '97062541456', 1010),
(1000014, 'PlayerO', '97062351456', 1011),
(1000015, 'PlayerP', '97062611456', 1011),
(1000016, 'PlayerQ', '97062721456', 1012),
(1000017, 'PlayerR', '97062561456', 1012),
(1000018, 'PlayerS', '97062891456', 1013),
(1000019, 'PlayerT', '97062761456', 1013),
(1000020, 'PlayerU', '97062461456', 1014),
(1000021, 'PlayerV', '97062981456', 1014),
(1000022, 'PlayerW', '97062191456', 1015),
(1000023, 'PlayerX', '97062981816', 1015),
(1000024, 'PlayerY', '97062981416', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `SportID` int(11) NOT NULL,
  `SportName` varchar(30) DEFAULT NULL,
  `MinTeams` int(11) DEFAULT NULL,
  `MaxTeams` int(11) DEFAULT NULL,
  `DivisionTeams` int(11) DEFAULT NULL,
  `MaxTeamSize` int(11) DEFAULT NULL,
  `MinTeamSize` int(11) DEFAULT NULL,
  `GameRules` varchar(100) DEFAULT NULL,
  `IndoorOutdoor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`SportID`, `SportName`, `MinTeams`, `MaxTeams`, `DivisionTeams`, `MaxTeamSize`, `MinTeamSize`, `GameRules`, `IndoorOutdoor`) VALUES
(1, 'Football', 8, 16, 8, 12, 10, 'These are the rules', 'Outdoor'),
(2, 'Basketball', 8, 16, 16, 10, 6, 'These are the rules', 'Indoor');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TeamID` int(11) NOT NULL,
  `TeamName` varchar(30) DEFAULT NULL,
  `PlayerCount` int(11) DEFAULT NULL,
  `Active` char(10) DEFAULT NULL,
  `Rank` int(11) DEFAULT NULL,
  `Won` int(11) DEFAULT NULL,
  `Lost` int(11) DEFAULT NULL,
  `DivisionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TeamID`, `TeamName`, `PlayerCount`, `Active`, `Rank`, `Won`, `Lost`, `DivisionID`) VALUES
(1000, 'Victorious Secret', 10, 'yes', 1, 8, 2, 100),
(1001, 'Here for Beer', 10, 'yes', 2, 6, 3, 100),
(1003, 'Cuban Raft Riders', 10, 'yes', 4, 5, 4, 100),
(1004, 'Maverick', 10, 'yes', 3, 6, 4, 101),
(1005, 'Secret', 10, 'yes', 5, 3, 6, 101),
(1006, 'Envy', 10, 'yes', 6, 2, 6, 101),
(1010, 'Dollar', 8, 'yes', 2, 6, 2, 102),
(1011, 'Brooklyn', 8, 'yes', 1, 8, 2, 102),
(1012, 'Celticsss', 8, 'yes', 5, 3, 5, 102),
(1013, 'Navi', 8, 'yes', 3, 6, 4, 103),
(1014, 'Furion', 8, 'yes', 6, 2, 6, 103),
(1015, 'Bully', 8, 'yes', 4, 5, 4, 103),
(1016, 'BullyNotMe', 8, 'yes', 4, 5, 4, 103);

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `TournamentID` int(11) NOT NULL,
  `TName` varchar(30) DEFAULT NULL,
  `BeginDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `AdminID` int(11) NOT NULL,
  `SportID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`TournamentID`, `TName`, `BeginDate`, `EndDate`, `Address`, `AdminID`, `SportID`) VALUES
(10, 'Palestinian Football Tournamen', '2017-01-28', '2017-03-28', 'Sanford, UGA', 10000, 1),
(11, 'Arab Basketball Championship', '2017-02-20', '2017-04-20', 'Coliseum, UGA', 10001, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tournamentbracket`
--

CREATE TABLE `tournamentbracket` (
  `TournamentID` int(11) NOT NULL,
  `RoundID` int(11) NOT NULL,
  `GameID` int(11) NOT NULL,
  `Venue` varchar(50) DEFAULT NULL,
  `GameDate` date DEFAULT NULL,
  `PlayoffGameWinner` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `WinnerTeam1` int(11) DEFAULT NULL,
  `WinnerTeam2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tournamentbracket`
--

INSERT INTO `tournamentbracket` (`TournamentID`, `RoundID`, `GameID`, `Venue`, `GameDate`, `PlayoffGameWinner`, `Address`, `WinnerTeam1`, `WinnerTeam2`) VALUES
(10, 1, 1, 'Sanford, UGA', '2017-01-28', 'Maverick', 'UGA, ATHENS, USA', 100, 101),
(11, 1, 1, 'Coliseum, UGA', '2017-02-20', 'Navi', 'UGA, ATHENS, USA', 102, 103);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Priveleges` int(11) DEFAULT NULL,
  `AdminID` int(11) DEFAULT NULL,
  `GuestID` int(11) DEFAULT NULL,
  `CoachID` int(11) DEFAULT NULL,
  `PlayerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Name`, `Password`, `Email`, `Address`, `Priveleges`, `AdminID`, `GuestID`, `CoachID`, `PlayerID`) VALUES
(0, 'Ahmed Ibrahim', '123', 'ahmed@gmail.com', 'Ramallah, Palestine', 1, 10000, NULL, NULL, NULL),
(2, 'Youssef Abdelnour', '123', 'youssef@gmail.com', 'Ramallah, Palestine', 1, 10001, NULL, NULL, NULL),
(10, 'Alberto Vasco1', '123', 'alberto1@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100000, NULL),
(11, 'Kim Kardashian1', '123', 'kim1@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100001, NULL),
(12, 'Alberto Vasco2', '123', 'alberto2@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100002, NULL),
(13, 'Kim Kardashian2', '123', 'kim2@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100003, NULL),
(14, 'Alberto Vasco3', '123', 'alberto3@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100004, NULL),
(15, 'Kim Kardashian3', '123', 'kim3@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100005, NULL),
(16, 'Alberto Vasco4', '123', 'alberto4@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100006, NULL),
(17, 'Kim Kardashian4', '123', 'kim4@gmail.com', 'Ramallah, Palestine', 2, NULL, NULL, 100007, NULL),
(18, 'Guest1', '123', 'xyz@gmail.com', 'Ramallah, Palestine', 4, NULL, 10000000, NULL, NULL),
(19, 'Guest2', '123', 'pqr@gmail.com', 'Ramallah, Palestine', 4, NULL, 10000001, NULL, NULL),
(20, 'PlayerA', '123', 'xyzA@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000000),
(21, 'PlayerB', '123', 'xyzB@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000001),
(22, 'PlayerC', '123', 'xyzC@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000002),
(23, 'PlayerD', '123', 'xyzD@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000003),
(24, 'PlayerE', '123', 'xyzE@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000004),
(25, 'PlayerF', '123', 'xyzF@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000005),
(26, 'PlayerG', '123', 'xyzG@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000006),
(27, 'PlayerH', '123', 'xyzH@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000007),
(28, 'PlayerI', '123', 'xyzI@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000008),
(29, 'PlayerJ', '123', 'xyzJ@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000009),
(30, 'PlayerK', '123', 'xyzK@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000010),
(31, 'PlayerL', '123', 'xyzL@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000011),
(32, 'PlayerM', '123', 'xyzM@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000012),
(33, 'PlayerN', '123', 'xyzN@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000013),
(34, 'PlayerO', '123', 'xyzO@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000014),
(35, 'PlayerP', '123', 'xyzP@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000015),
(36, 'PlayerQ', '123', 'xyzQ@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000016),
(37, 'PlayerR', '123', 'xyzR@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000017),
(38, 'PlayerS', '123', 'xyzS@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000018),
(39, 'PlayerT', '123', 'xyzT@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000019),
(40, 'PlayerU', '123', 'xyzU@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000020),
(41, 'PlayerV', '123', 'xyzV@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000021),
(42, 'PlayerW', '123', 'xyzW@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000022),
(43, 'PlayerX', '123', 'xyzX@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000023),
(44, 'PlayerY', '123', 'xyzY@gmail.com', 'Ramallah, Palestine', 3, NULL, NULL, NULL, 1000024);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`CoachID`),
  ADD KEY `FK_Coach_0` (`TeamID`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`DivisionID`),
  ADD KEY `FK_Division_0` (`SportID`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`GameID`),
  ADD KEY `FK_Games_0` (`TeamID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`GuestID`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerID`),
  ADD KEY `FK_Player_0` (`TeamID`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`SportID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamID`),
  ADD KEY `FK_Team_0` (`DivisionID`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`TournamentID`),
  ADD KEY `FK_Tournament_0` (`AdminID`),
  ADD KEY `FK_Tournament_1` (`SportID`);

--
-- Indexes for table `tournamentbracket`
--
ALTER TABLE `tournamentbracket`
  ADD PRIMARY KEY (`TournamentID`,`RoundID`,`GameID`),
  ADD KEY `FK_TournamentBracket_1` (`WinnerTeam1`),
  ADD KEY `FK_TournamentBracket_2` (`WinnerTeam2`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `FK_User_0` (`AdminID`),
  ADD KEY `FK_User_1` (`GuestID`),
  ADD KEY `FK_User_2` (`CoachID`),
  ADD KEY `FK_User_3` (`PlayerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT for table `coach`
--
ALTER TABLE `coach`
  MODIFY `CoachID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100008;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `DivisionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `GuestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000002;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `PlayerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000025;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `SportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `TeamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `TournamentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `FK_Coach_0` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`);

--
-- Constraints for table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `FK_Division_0` FOREIGN KEY (`SportID`) REFERENCES `sport` (`SportID`);

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `FK_Games_0` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `FK_Player_0` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `FK_Team_0` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`DivisionID`);

--
-- Constraints for table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `FK_Tournament_0` FOREIGN KEY (`AdminID`) REFERENCES `administrator` (`AdminID`),
  ADD CONSTRAINT `FK_Tournament_1` FOREIGN KEY (`SportID`) REFERENCES `sport` (`SportID`);

--
-- Constraints for table `tournamentbracket`
--
ALTER TABLE `tournamentbracket`
  ADD CONSTRAINT `FK_TournamentBracket_0` FOREIGN KEY (`TournamentID`) REFERENCES `tournament` (`TournamentID`),
  ADD CONSTRAINT `FK_TournamentBracket_1` FOREIGN KEY (`WinnerTeam1`) REFERENCES `division` (`DivisionID`),
  ADD CONSTRAINT `FK_TournamentBracket_2` FOREIGN KEY (`WinnerTeam2`) REFERENCES `division` (`DivisionID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_User_0` FOREIGN KEY (`AdminID`) REFERENCES `administrator` (`AdminID`),
  ADD CONSTRAINT `FK_User_1` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestID`),
  ADD CONSTRAINT `FK_User_2` FOREIGN KEY (`CoachID`) REFERENCES `coach` (`CoachID`),
  ADD CONSTRAINT `FK_User_3` FOREIGN KEY (`PlayerID`) REFERENCES `player` (`PlayerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
