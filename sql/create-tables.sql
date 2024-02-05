CREATE TABLE IF NOT EXISTS Director (
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstname varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Film (
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	title varchar(255) not null,
    duration int not null,
    release_date date not null,
    FK_director int not null,
    FOREIGN KEY (FK_director) REFERENCES Director(id)
);

CREATE TABLE IF NOT EXISTS Roles (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Login (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mail varchar(150) NOT NULL,
    password varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstname varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL,
    FK_Login int not null,
    FK_Role int not null,
    FOREIGN KEY (FK_Login) REFERENCES Login(id),
    FOREIGN KEY (FK_Role) REFERENCES Roles(id)
);

CREATE TABLE IF NOT EXISTS Actor (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstname varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL,
    birthdate DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Actor_roles (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstname varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL,
    isPrimary int not null,
    FK_Actor int not null,
    FOREIGN KEY (FK_Actor) REFERENCES Actor(id)
);

CREATE TABLE IF NOT EXISTS Liked_film (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FK_film int not null,
    FK_user int not null,
    FOREIGN KEY (FK_film) REFERENCES Film(id),
    FOREIGN KEY (FK_user) REFERENCES Users(id)
);

CREATE TABLE IF NOT EXISTS Actor_film (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FK_film int not null,
    FK_actor int not null,
    FOREIGN KEY (FK_film) REFERENCES Film(id),
    FOREIGN KEY (FK_actor) REFERENCES Actor(id)
);
