
CREATE TABLE IF NOT EXISTS "teams" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50),
  "championship_name" VARCHAR(50),
  FOREIGN KEY("championship_name") REFERENCES "championship"("name")
);

INSERT INTO "teams"("id","name","championship_name") VALUES
(1, 'Stade Toulousain', 'Top 14'),
(2, 'Union Bordeaux-Bègles', 'Top 14'),
(3, 'Stade Rochelais', 'Top 14'),
(4, 'Toulon', 'Top 14'),
(5, 'Castres', 'Top 14'),
(6, 'Stade Français', 'Top 14'),
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

INSERT INTO "players"("id","first_name", "last_name", "birthday", "height", "weight", "post_id", "team_id", "championship_id", "nationality", "description") VALUES
(1, 'David', 'Ainu''u', '20 Nov 1999', 178, 122, 1, 1, 1, 'USA', 'Arrivé des Etats-Unis en 2017, David Ainu''u a intégré le Centre de Formation du Stade Toulousain. Lors de la saison 18-19, il se retrouve propulsé en équipe première à 6 reprises, en rentrant notamment en jeu lors de la victoire des Stadistes contre le Leinster à Ernest Wallon.

En 2019, il est sélectionné par les Etats-Unis pour les Tests de novembre, pour le Rugby Championship America et pour la Coupe du Monde au Japon, dans laquelle il se blesse malheureusement dès le premier match.

Lors de la saison 20-21, son temps de jeu avec l’équipe première n’a fait qu’augmenter. Joueur puissant avec une technique individuelle très développée, il a pris part à 14 matchs de Championnat et 2 matchs de Champions Cup. Le pilier polyvalent, a participé au doublé du Stade Toulousain cette année-là, gagnant la confiance des entraîneurs qui ont fait appel à lui pour entrer en cours de match ou débuter certaines rencontres de fin de saison notamment. Les deux saisons suivantes ont été du même acabit et David est pleinement installé dans la rotation au poste de pilier. Lors du dernier exercice, il participa à 22 rencontres toutes compétitions confondues et remporta le troisième Bouclier de Brennus de sa carrière.')


