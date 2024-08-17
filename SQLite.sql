**EXPLORATORY DATA ANALYSIS**
-- Check the number of WNBA players in the league
SELECT COUNT(DISTINCT name) AS Total_WNBA_Players
FROM wnbadataset

--Check the number of Teams in the WNBA
SELECT COUNT(DISTINCT team) AS Total_WNBA_Teams
FROM wnbadataset

--Players who have experienced over 10 years
SELECT name 
from wnbadataset
where experience = 10

--Find out the number of players on each team 
SELECT team, COUNT(*) AS name
from wnbadataset
GROUP BY team
ORDER by name

--League age range 
SELECT Min(age), Max(age)
from wnbadataset

--Scoring leader in the 2017 season 
SELECT name, pts
from wnbadataset
GROUP BY name
ORDER by pts DESC

--Stats of players across the league 
SELECT  name,pts,reb,ast,stl
FROM wnbadataset
GROUP by name
ORDER by pts DESC

--Team Stats 
SELECT team, fg_perc, three_p_perc, ft_perc
FROM wnbadataset
GROUP BY team
order by fg_perc DESC

--Most experience in the 2017 NBA league
SELECT name,experience,age
from wnbadataset
group by name
ORDER by age DESC

--Most games played
select name, games_played, age 
from wnbadataset
group by name 
order by games_played DESC

-- Where do players come from
select name,college,birthdate, birth_place
FROM wnbadataset
GROUP by name

**DATA ANALYSIS**
--Determine if a player has reached rookie or veteran status this season
SELECT case 
			when experience > 2 then 'Veteran'
            else 'Rookie'
          end as Player_Status, name as Player
 FROM wnbadataset
 group by name
 
 --Determine if a player is an above average defender this season 
 SELECT case 
			when stl > 30 then 'Above Average Defender'
            else 'Average Defender'
          end as Player_Status, name as Player
 FROM wnbadataset
 group by name
 order by stl DESC
 
  --Determine if a player is an Elite Scorer this season  
 SELECT case 
			when pts >= 500  then 'Elite Scorer'
            when pts >= 300 then 'Average Scorer'
            Else 'Non Scorer'
         
          end as Player_Status, name as Player
 FROM wnbadataset
 group by name
 order by pts DESC