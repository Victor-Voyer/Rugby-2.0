BEGIN;

DROP TABLE IF EXISTS "player", "team", "coach", "stat", "stade", "user";

CREATE TABLE player (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "lastname" VARCHAR(100) NOT NULL,
    "firstname" VARCHAR(100) NOT NULL,
    "birth_date" DATE NOT NULL,
    "nationality" VARCHAR(50) NOT NULL,
    "post_id" INT NOT NULL,
    "height" INT NOT NULL,
    "weight" INT NOT NULL,
    "id_team" INT NOT NULL,
    FOREIGN KEY (id_team) REFERENCES team(id)
);

CREATE TABLE team (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "banner" TEXT NOT NULL,
    "created_date" DATE NOT NULL,
    "colors" VARCHAR(7) NOT NULL,
    "id_stade" INT NOT NULL,
    FOREIGN KEY (id_stade) REFERENCES stade(id)
);

CREATE TABLE post (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name_post" VARCHAR(50) NOT NULL
);

CREATE TABLE stade (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    "city" TEXT NOT NULL UNIQUE,
    "capacity" INT NOT NULL
);

CREATE TABLE coach (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "lastname" VARCHAR(100) NOT NULL,
    "firstname" VARCHAR(100) NOT NULL,
    "birth_date" DATE NOT NULL,
    "nationality" VARCHAR(50) NOT NULL,
    "id_team" INT NOT NULL,
    FOREIGN KEY (id_team) REFERENCES team(id)
);

CREATE TABLE stat (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "id_player" INT NOT NULL,
    "points_scored" INT,
    "try" INT,
    "tackle" INT,
    "lastpass" INT,
    FOREIGN KEY (id_player) REFERENCES player(id)
);

CREATE TABLE user (
    "id" INT PRIMARY KEY,
    "name_user" VARCHAR(100) NOT NULL UNIQUE,
    "password" VARCHAR(255) NOT NULL,
    "email" VARCHAR(100) NOT NULL UNIQUE,
    "registration_date" DATE,
    role VARCHAR(50)
);


CREATE TABLE player_post (
    "player_id" INT NOT NULL,
    "post_id" INT NOT NULL,
    PRIMARY KEY (player_id, post_id),
    FOREIGN KEY (player_id) REFERENCES player(id),
    FOREIGN KEY (post_id) REFERENCES post(id)
);

COMMIT;




