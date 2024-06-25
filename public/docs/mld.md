## Entités principales :

- player : représente les players de rugby
- team : représente les Teams de rugby
- stade : représente le stade d'une team
- coach : représente les entraîneurs des Teams
- stat : représente les statistiques des players pour la saison
- user : représente les utilisateurs du site


## Attributs des entités :

#### player

- id
- lastname
- firstname
- birth_date
- nationality
- post_id
- height
- weight
- id_team 


#### team

- id
- name
- city
- banner
- created_date
- colors
- id_stade


#### Post

- id
- name_post

#### stade

- id
- name
- city
- capacity

#### coach

- id
- lastname
- firstname
- birth_date
- nationality
- id_team


#### stat

- id
- id_player
- points_scored
- try
- tackle
- lastpass


#### (user)

- id
- name_user
- password
- email
- registration_date
- role (Admin, Visitor)


## Relations :

  
- Une team a plusieurs players, mais un player appartient à une seule team.
    - Cardinalité : 1,N (team a player) et N,1 (player a team)
  
  
- Une team a un seul entraîneur, mais un entraîneur entraîne une seule team
    - Cardinalité : 1,1 (team a coach) et 1,1 (coach a team)

- Une team a un seul stade, mais un stade est utilisé par une seule team
    - Cardinalité : 1,1 (team a stade) et 1,1 (stade a team)

- Un player peut avoir plusieurs statistiques, une statistique est liée à un player.
    - Cardinalité : 1,N (player a stat) et N,1 (stat a player)


- Un player peut avoir plusieurs post, et un post peut être lié à plusieurs players.
  - Cardinalité : N,N (player a post) et N,N (post a player)


- Un utilisateur peut avoir différents rôles sur le site.
    - Cardinalité : 1,1 (user a Rôle)