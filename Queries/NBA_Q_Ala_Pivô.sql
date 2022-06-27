-- O ala-pivô precisa atuar bem no garrafão e em média distância. 
-- Qual jogador tem mais arremessos convertidos adicionando rebotes e bloqueios?
-- Rebotes, blocks e arremessos convertidos (REB + BLK + FGM - TO) 

SELECT 
    games_details.player_name,
    SUM(games_details.blk + games_details.fgm + games_details.reb - games_details.`to`) AS Pontuação
FROM
    games_details
        INNER JOIN
    games ON games.game_id = games_details.game_id
WHERE
    games_details.start_position = 'F'
        AND games.season BETWEEN '2016' AND '2019'
GROUP BY games_details.player_name
ORDER BY Pontuação DESC
LIMIT 10