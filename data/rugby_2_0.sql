
CREATE TABLE IF NOT EXISTS "teams" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50),
  "championship_name" VARCHAR(50),
  FOREIGN KEY("championship_name") REFERENCES "championship"("name")
);

INSERT INTO "teams"("id","name","championship_name",) VALUES
(1, 'Stade Toulousain', 'Top 14'),
(2, 'Union Bordeaux-Bègles', 'Top 14'),
(3, 'Stade Rochelais', 'Top 14'),
(4, 'Toulon', 'Top 14'),
(5, 'Castres', 'Top 14'),
(6, 'Stade Francençais', 'Top 14' ),
(7, 'Bayonne', 'Top 14'),
(8, 'ASM Clermont', 'Top 14'),
(9, 'Lyon', 'Top 14'),
(10, 'Oyonnax', 'Top 14'),
(11, 'Montpellier', 'Top 14'),
(12, 'USAP Perpignan', 'Top 14'),
(13, 'Pau', 'Top 14'),
(14, 'Racing 92', 'Top 14'),
(15, 'Provence Rugby', 'Pro D2'),
(16, 'Vannes', 'Pro D2'),
(17, 'Béziers', 'Pro D2'),
(18, 'Grenoble', 'Pro D2'),
(19, 'Dax', 'Pro D2'),
(20, 'Brive', 'Pro D2'),
(21, 'Nevers', 'Pro D2'),
(22, 'Mont de Marsan', 'Pro D2'),
(23, 'Aurillac', 'Pro D2'),
(24, 'Colomiers', 'Pro D2'),
(25, 'SA XV Angoulême', 'Pro D2'),
(26, 'Valence Romans', 'Pro D2'),
(27, 'Agen', 'Pro D2'),
(28, 'Biarritz', 'Pro D2'),
(29, 'US Montauban', 'Pro D2'),
(30, 'Rouen Norandie', 'Pro D2');




CREATE TABLE IF NOT EXISTS "championship" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50),
);

INSERT INTO "championship"("id","name") VALUES
(1, 'Top 14'),
(2, 'Pro D2');




CREATE TABLE IF NOT EXISTS "post" (
  "id" SERIAL PRIMARY KEY,
  "name_post" VARCHAR(50),
);

INSERT INTO "post"("id","name_post") VALUES
(1, 'Pilier'),
(2, 'Talonneur'),
(3, 'Seconde Ligne'),
(4, 'Troisème Ligne Aile'),
(5, 'Troisème Ligne Centre'),
(6, 'Demi de Mêlée'),
(7, 'Demi d''Ouverture'),
(8, 'Centre'),
(9, 'Ailier'),
(10, 'Arrière');



CREATE TABLE IF NOT EXISTS "players" (
  "id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "birthday" DATE,
  "height" INT,
  "weight" INT,
  "post_id" INT,
  "team_id" INT,
  "championship_id" INT,
  "nationality" VARCHAR(100),
  "description" TEXT;
);

INSERT INTO "players"("id","first_name", "last_name", "birthday", "height", "weight", "post_id", "team_id", "championship_id", "nationality") VALUES
(1, 'David', 'Ainu''u', '1999-11-20', 178, 122, 1, 1, 1, 'Etat-Unis'),
(2, 'Dorian', 'Aldegheri', '1993-08-04', 180, 119, 1, 1, 1, 'France'),
(3, 'Cyril', 'Baille', '1993-09-15', 182, 118, 1, 1, 1, 'France'),
(4, 'Maxime', 'Duprat', '1999-06-12', 182, 120, 1, 1, 1, 'France'),
(5, 'Nepo', 'Laulala', '1991-11-06', 184, 133, 1, 1, 1, 'Nouvelle-Zélande'),
(6, 'Paul', 'Mallez', '2001-01-24', 180, 116, 1, 1, 1, 'France'),
(7, 'Joel', 'Merkler', '2001-10-25', 194, 135, 1, 1, 1, 'Espagne'),
(8, 'Rodrigue', 'Neti', '1995-04-26', 185, 121, 1, 1, 1, 'France'),
(9, 'Marco', 'Trauth', '2000-09-15', 186, 110, 1, 1, 1, 'France'),
(10, 'Ian', 'Boubila', '2002-01-17', 181, 108, 2, 1, 1, 'France'),
(11, 'Guillaume', 'Cramont', '2000-12-29', 182, 107, 2, 1, 1, 'France'),
(12, 'Julien', 'Marchand', '1995-05-10', 181, 110, 2, 1, 1, 'France'),
(13, 'Peato', 'Mauvaka', '1997-01-10', 184, 112, 2, 1, 1, 'France'),
(14, 'Richie', 'Arnold', '1990-07-01', 208, 123, 3, 1, 1, 'Australie'),
(15, 'Joshua', 'Brennan', '2001-11-28', 199, 118, 3, 1, 1, 'France'),
(16, 'Piula', 'Faasalele', '1988-01-22', 196, 120, 3, 1, 1, 'France'),
(17, 'Thibaud', 'Flament', '1997-04-29', 203, 116, 3, 1, 1, 'France'),
(18, 'Emmanuel', 'Meafou', '1998-07-12', 203, 145, 3, 1, 1, 'France'),
(19, 'Clément', 'Vergé', '2001-09-13', 200, 123, 3, 1, 1, 'France'),
(20, 'Léo', 'Banos', '2002-08-16', 191, 100, 4, 1, 1, 'France'),
(21, 'François', 'Cross', '1994-03-25', 190, 111, 4, 1, 1, 'France'),
(22, 'Anthony', 'Jelonch', '1996-07-28', 193, 108, 4, 1, 1, 'France'),
(23, 'Alban', 'Placines', '1993-04-23', 189, 114, 4, 1, 1, 'France'),
(24, 'Jack', 'Willis', '1996-12-24', 190, 112, 4, 1, 1, 'Angleterre'),
(25, 'Mathis', 'Castro Ferreira', '2004-01-13', 192, 105, 5, 1, 1, 'France'),
(26, 'Théo', 'Ntamack', '2002-05-29', 193, 110, 5, 1, 1, 'France'),
(27, 'Alexandre', 'Roumat', '1997-06-27', 198, 110, 5, 1, 1, 'France'),
(28, 'Antoine', 'Dupont', '1996-11-15', 174, 85, 6, 1, 1, 'France'),
(29, 'Baptiste', 'Germain', '2000-11-21', 174, 80, 6, 1, 1, 'France'),
(30, 'Paul', 'Graou', '1997-07-25', 177, 88, 6, 1, 1, 'France'),
(31, 'Blair', 'Kinghorn', '1997-01-18', 193, 107, 7, 1, 1, 'Ecosse'),
(32, 'Romain', 'Ntamack', '1999-05-01', 186, 91, 7, 1, 1, 'France'),
(33, 'Pita', 'Ahki', '1992-09-24', 189, 101, 8, 1, 1, 'Nouvelle-Zélande'),
(34, 'Pierre-Louis', 'Barassi', '1998-04-22', 187, 99, 8, 1, 1, 'France'),
(35, 'Santiago', 'Chaocobares', '1999-03-31', 188, 100, 8, 1, 1, 'Argentine'),
(36, 'Paul', 'Costes', '2003-04-04', 182, 85, 8, 1, 1, 'France'),
(37, 'Sofiane', 'Guitoune', '1989-03-27', 184, 97, 8, 1, 1, 'France'),
(38, 'Setareki', 'Bituniyata', '1995-08-12', 194, 112, 9, 1, 1, 'Fidji'),
(39, 'Dimitri', 'Delibes', '1999-03-17', 190, 98, 9, 1, 1, 'France'),
(40, 'Nelson', 'Epée', '2001-02-20', 174, 77, 9, 1, 1, 'France'),
(41, 'Mathis', 'Lebel', '1999-03-25', 184, 90, 9, 1, 1, 'France'),
(42, 'Arthur', 'Retière', '1997-08-01', 170, 80, 9, 1, 1, 'France'),
(43, 'Lucas', 'Tauzin', '1998-05-21', 187, 98, 9, 1, 1, 'France'),
(44, 'Ange', 'Capuozzo', '1999-04-30', 177, 79, 10, 1, 1, 'Italie'),
(45, 'Juan Cruz', 'Mallia', '1996-09-11', 182, 89, 10, 1, 1, 'Argentine'),
(46, 'Thomas', 'Ramos', '1995-07-25', 178, 87, 10, 1, 1, 'France'),




