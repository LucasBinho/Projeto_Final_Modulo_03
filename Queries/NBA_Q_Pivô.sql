-- O pivô precisa dominar o garrafão dos dois lados da quadra. Qual pivô se sai melhor em rebotes e bloqueios?
-- Rebotes e blocks (REB + BLK + FGM)

select games_details.player_name, sum(games_details.blk + games_details.fgm + games_details.reb) as Pontuação
from games_details
inner join games on games.game_id = games_details.game_id
where games_details.start_position = 'C' and games.season between '2016' and '2019' 
group by games_details.player_name
order by Pontuação desc
limit 10;