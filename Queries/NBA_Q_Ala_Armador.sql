-- Um ala-armador com principal objetivo de fornecer uma pontuação sólida e armar o jogo quando necessário. 
-- Qual jogador oferece mais arremessos convertidos de 2PTS, 3PTS, lances livres e assistências?
-- Assistências e arremessos convertidos(AST + FGM + FG3M + FTM - TO)


select games_details.player_name, sum(games_details.ftm + games_details.fg3m + games_details.ast + games_details.fgm - games_details.`to`) as Pontuação
from games_details
inner join games on games.game_id = games_details.game_id
where games_details.start_position = 'G' and games.season between '2016' and '2019'
group by games_details.player_name
order by Pontuação desc
limit 10;