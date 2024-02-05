INSERT INTO Director (firstname, lastname) VALUES
	('Christopher', 'Nolan'),
    ('Quentin', 'Tarantino'),
    ('Steven', 'Spielberg'),
    ('Martin', 'Scorsese'),
    ('James', 'Cameron');
    
INSERT INTO Actor (firstname, lastname, birthdate) VALUES
	('Robert', 'De Niro', '1943-08-17'),
    ('Tom', 'Hanks', '1956-07-09'),
    ('Julia', 'Roberts', '1967-10-28');

INSERT INTO Actor_roles (firstname, lastname, isPrimary, FK_Actor) VALUES
    ("role", "1", 1, 1),
    ("role", "2", 0, 2),
    ("role", "3", 1, 3),
    ("role", "4", 0, 1);

INSERT INTO Roles (name) VALUES
    ('Administrateur'),
    ('Utilisateur');

INSERT INTO Login (mail, password) VALUES
    ("user1@gmail.com", "mdp1"),
    ("user2@gmail.com", "mdp2"),
    ("user3@gmail.com", "mdp3"),
    ("user4@gmail.com", "mdp4"),
    ("user5@gmail.com", "mdp5"),
    ("user6@gmail.com", "mdp6"),
    ("admin1@gmail.com", "mdp10");

INSERT INTO Users (firstname, lastname, FK_Login, FK_Role) VALUES
	('User', 'test1', 1, 2),
    ('User', 'test2', 2, 2),
    ('User', 'test3', 3, 2),
    ('User', 'test4', 4, 2),
    ('User', 'test5', 5, 2),
    ('User', 'test6', 6, 2),
    ('Admin', 'test10', 7, 1);

INSERT INTO Film (title, duration, release_date, FK_director) VALUES
	('Film1', 148, '2023-07-13', 1),
    ('Film2', 148, '2012-02-20', 2),
    ('Film3', 148, '2011-01-03', 3),
    ('Film4', 148, '1998-04-26', 4),
    ('Film5', 148, '1990-05-18', 5),
    ('Film6', 148, '1999-07-01', 1);
    
INSERT INTO Liked_film (FK_film, FK_user) VALUES
	(1, 1),
    (2, 2),
	(3, 3),
    (4, 4),
	(5, 5),
    (6, 6),
	(1, 5),
    (2, 4);
    
INSERT INTO Actor_film (FK_film, FK_actor) VALUES
	(1, 1),
    (2, 2),
    (3, 3),
    (4, 3),
    (5, 2),
    (6, 1),
    (1, 2),
	(4, 3);
