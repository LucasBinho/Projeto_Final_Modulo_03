use nba;
alter table teams add primary key (TEAM_ID);
alter table games add primary key (GAME_ID);

alter table games add foreign key (HOME_TEAM_ID) references teams(TEAM_ID);
alter table games add foreign key (VISITOR_TEAM_ID) references teams(TEAM_ID);

alter table games_details add foreign key (GAME_ID) references games(GAME_ID);
alter table games_details add foreign key (TEAM_ID) references teams(TEAM_ID);