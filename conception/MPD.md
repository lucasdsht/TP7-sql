# MPD

## Script creations tables

### FILMS
### ACTORS
### REALISATOR
### USERS


# MCD

PERSONNAGE: _nom, prenom
JOUE, 1N ACTEURS, 1N FILM
FILM: _titre, duree, date de sortie
REGARDE, 1N UTILISATEUR, 1N FILM
UTILISATEUR: _nom, prenom, mail, pwd, role
AIME, 1N UTILISATEUR, 1N LIKED_FILM
LIKED_FILM: _ref_film, ref_user

INCARNE, 1N ACTEURS, 0N PERSONNAGE
ACTEURS: _nom, prenom, date_naissance
REALISE, 1N REALISATEUR, 0N FILM
REALISATEUR: _nom, prenom
POSSEDE, 1N UTILISATEUR, ON ROLE
ROLE: _nom
:

# MLD
ACTEURS ( nom, prenom, date_naissance )
FILM ( titre, duree, date_de_sortie )
LIKED_FILM ( ref_film, ref_user )
PERSONNAGE ( nom, prenom )
REALISATEUR ( nom, prenom )
ROLE ( nom )
UTILISATEUR ( nom, prenom, mail, pwd, role )
