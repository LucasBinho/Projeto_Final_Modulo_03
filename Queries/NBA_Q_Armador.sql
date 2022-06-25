-- Sendo o armador o primeiro defensor no combate e o criador principal de jogadas. 
-- Qual armador oferece mais assistências e roubos de bola?
-- G: Roubos de bola e assistências.(STL +  AST + FGM - TO)
use nba;

select games_details.player_name, sum(games_details.stl + games_details.ast + games_details.fgm - games_details.`to`) as Pontuação
from games_details
inner join games on games.game_id = games_details.game_id
where games_details.start_position = 'G' and games.season between '2016' and '2019'
group by games_details.player_name
order by Pontuação desc
limit 10;
