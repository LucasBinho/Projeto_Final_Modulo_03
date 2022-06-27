-- O ala é o cara mais versátil em quadra, tem que saber atacar e defender. 
-- Qual jogador tem mais arremessos e lances livres convertidos, além de rebotes e assistências?
-- F: Arremessos convertidos, lances livres convertidos, rebotes e assistências(FGM + FG3M + FTM + REB + AST - TO)

select games_details.player_name, sum(games_details.ftm + games_details.fg3m + games_details.ast + games_details.fgm + games_details.reb - games_details.`to`) as Pontuação
from games_details
inner join games on games.game_id = games_details.game_id
where games_details.start_position = 'F' and games.season between '2016' and '2019' 
group by games_details.player_name
order by Pontuação desc
limit 10;
