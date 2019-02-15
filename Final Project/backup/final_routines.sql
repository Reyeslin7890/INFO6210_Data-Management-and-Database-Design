-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `top10yellowcardplayer`
--

DROP TABLE IF EXISTS `top10yellowcardplayer`;
/*!50001 DROP VIEW IF EXISTS `top10yellowcardplayer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `top10yellowcardplayer` AS SELECT 
 1 AS `Name`,
 1 AS `Yellow Card Number`,
 1 AS `FromClub`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top10scorers`
--

DROP TABLE IF EXISTS `top10scorers`;
/*!50001 DROP VIEW IF EXISTS `top10scorers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `top10scorers` AS SELECT 
 1 AS `Name`,
 1 AS `Goals`,
 1 AS `fromClub`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allclubdetails`
--

DROP TABLE IF EXISTS `allclubdetails`;
/*!50001 DROP VIEW IF EXISTS `allclubdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `allclubdetails` AS SELECT 
 1 AS `clubid`,
 1 AS `Club`,
 1 AS `Location`,
 1 AS `Coach`,
 1 AS `Stadium`,
 1 AS `StadiumCapacity`,
 1 AS `PlayerNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `standingview`
--

DROP TABLE IF EXISTS `standingview`;
/*!50001 DROP VIEW IF EXISTS `standingview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `standingview` AS SELECT 
 1 AS `Club`,
 1 AS `MatchPlays`,
 1 AS `Wins`,
 1 AS `Draws`,
 1 AS `Loses`,
 1 AS `GoalFor`,
 1 AS `GoalAgainst`,
 1 AS `GoalDifference`,
 1 AS `Points`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `top10yellowcardplayer`
--

/*!50001 DROP VIEW IF EXISTS `top10yellowcardplayer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top10yellowcardplayer` AS select concat(`p`.`FirstName`,' ',`p`.`LastName`) AS `Name`,count(0) AS `Yellow Card Number`,`f`.`ClubName` AS `FromClub` from ((`players` `p` join `matchevents` `mc`) join `footballclub` `f`) where ((`p`.`PlayerID` = `mc`.`PlayerID`) and (`mc`.`Event` = 'Yellow Card') and (`f`.`Clubid` = `p`.`BelongtoClubID`)) group by `p`.`PlayerID` order by count(0) desc,'Name' limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top10scorers`
--

/*!50001 DROP VIEW IF EXISTS `top10scorers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top10scorers` AS select concat(`p`.`FirstName`,' ',`p`.`LastName`) AS `Name`,count(0) AS `Goals`,`c`.`ClubName` AS `fromClub` from ((`matchevents` `m` join `players` `p` on((`p`.`PlayerID` = `m`.`PlayerID`))) join `footballclub` `c` on((`p`.`BelongtoClubID` = `c`.`Clubid`))) where (`m`.`Event` = 'goal') group by `Name` order by `Goals` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allclubdetails`
--

/*!50001 DROP VIEW IF EXISTS `allclubdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allclubdetails` AS select `f`.`Clubid` AS `clubid`,`f`.`ClubName` AS `Club`,`s`.`LocationCity` AS `Location`,concat(`c`.`FirstName`,' ',`c`.`LastName`) AS `Coach`,`s`.`StadiumName` AS `Stadium`,`s`.`Capacity` AS `StadiumCapacity`,count(0) AS `PlayerNumber` from (((`footballclub` `f` join `coach` `c`) join `stadium` `s`) join `players` `p`) where ((`f`.`Clubid` = `c`.`clubid`) and (`f`.`Clubid` = `s`.`ClubID`) and (`p`.`BelongtoClubID` = `f`.`Clubid`)) group by `f`.`Clubid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `standingview`
--

/*!50001 DROP VIEW IF EXISTS `standingview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `standingview` AS select `footballclub`.`ClubName` AS `Club`,`premierleaguestandings`.`MatchPlays` AS `MatchPlays`,`premierleaguestandings`.`Wins` AS `Wins`,`premierleaguestandings`.`Draws` AS `Draws`,`premierleaguestandings`.`Loses` AS `Loses`,`premierleaguestandings`.`GoalFor` AS `GoalFor`,`premierleaguestandings`.`GoalAgainst` AS `GoalAgainst`,`premierleaguestandings`.`GoalDifference` AS `GoalDifference`,`premierleaguestandings`.`Points` AS `Points` from (`premierleaguestandings` join `footballclub` on((`footballclub`.`Clubid` = `premierleaguestandings`.`ClubID`))) order by `premierleaguestandings`.`Points` desc,`premierleaguestandings`.`GoalDifference` desc,`premierleaguestandings`.`GoalFor` desc,`premierleaguestandings`.`Wins` desc,`premierleaguestandings`.`ClubID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'final'
--

--
-- Dumping routines for database 'final'
--
/*!50003 DROP PROCEDURE IF EXISTS `clubmatchrecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clubmatchrecord`(in clubid int)
BEGIN
	select 
		m.matchid 'Match ID',
        m.opendate 'Match Time',
		c1.ClubName 'Home Team', 
		concat(m.HomeTeamScore,':',m.AwayTeamScore) 'Score',
        c2.ClubName 'Away Team'    
    from matches m
    join footballclub c1 on c1.Clubid = m.HomeTeamID
    join footballclub c2 on c2.Clubid = m.AwayTeamID
    where (c1.Clubid = clubid) or (c2.clubid = clubid)
    order by 'Match Time' asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Intransfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Intransfer`(in Player_ID int, in Club_ID int, in Transfer_Date date, 
in Transfer_Amount Double,in Curr VARCHAR(45),in Dscrpn ENUM('Free', 'Loan', 'Undisclosed', 'Released'))
proc_label:BEGIN
	select @club:=players.belongtoclubid from players 
    where players.playerid = Player_ID;
    IF @club IS not NULL THEN
          leave proc_label;
	END IF;
    insert into in_transfers(PlayerID, ClubID, TransferDate, TransferAmount, Currency, Description)
    value(Player_ID,Club_ID,Transfer_Date,Transfer_Amount,Curr,Dscrpn);
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `matchdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `matchdetail`(in matchid int)
BEGIN
	select 
		concat(eve.Minute,'\'') 'Minutes',
        concat(players.FirstName,' ', players.LastName) 'Full Name',
        footballclub.clubname 'Club',
        eve.Event 'Event'        
    from matchevents eve
    join players on players.PlayerID = eve.PlayerID
    join footballclub on footballclub.clubid = players.belongtoclubid
    where matchid = eve.match_id
    order by eve.minute;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NewMatch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NewMatch`(in Hometeam_id int, 
in Awayteam_id int, in Open_date date, in referee_id int, out match_id int)
BEGIN
	insert into matches(hometeamid, awayteamid, opendate, refereeid)
    value(Hometeam_id, Awayteam_id, Open_date, referee_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NewMatchEvent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NewMatchEvent`(in match_id int, in player_id int, 
in minutes int, in matchevent ENUM('Goal', 'Red Card', 'Yellow Card', 'Substitude', 'is replaced') )
BEGIN
	insert into matchevents (Match_ID, PlayerID, Minute, Event)
    value(match_id, player_id, minutes, matchevent);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OutTransfer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OutTransfer`(in Player_ID int, in Club_ID int, in Transfer_Date date, 
in Transfer_Amount Double,in Curr VARCHAR(45),in Dscrpn ENUM('Free', 'Loan', 'Undisclosed', 'Released'))
proc_label:BEGIN
	select @club:=players.belongtoclubid from players 
    where players.playerid = Player_ID;
    IF @club IS NULL THEN
          leave proc_label;
	END IF;
    insert into out_transfers(PlayerID, ClubID, TransferDate, TransferAmount, Currency, Description)
    value(Player_ID,Club_ID,Transfer_Date,Transfer_Amount,Curr,Dscrpn);
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `playerdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `playerdetail`(in playerid int)
BEGIN
	select distinct
		p.PlayerID 'id',
		concat(p.FirstName,' ',p.LastName) 'Name',
        n.nationality 'Nationality',
        f.ClubName 'BelongToClub',
        p.SquadNumber 'SquadNumber',
        group_concat(distinct posi.position separator ' & ') 'Position',
        count(distinct a.MatchID) 'Appearance',
        (select count(*) from matchevents where (matchevents.playerid = p.playerid) and (matchevents.event = 'Goal')) 'Goals',
        (select count(*) from matchevents where (matchevents.playerid = p.playerid) and (matchevents.event = 'Yellow Card')) 'Yellow Cards',
        (select count(*) from matchevents where (matchevents.playerid = p.playerid) and (matchevents.event = 'Red Card')) 'Red Cards'
	from players p
    inner join nationality n on p.NationalityID = n.nationalityID
    inner join footballclub f on f.Clubid = p.BelongtoClubID
    inner join playerposition pp on pp.PlayerID = p.PlayerID
    inner join positions posi on pp.PositionID = posi.positionID
    inner join appearance a on a.PlayerID = p.PlayerID
    where p.PlayerID = playerid;    
			
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  5:39:39
