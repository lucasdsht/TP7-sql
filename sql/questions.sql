-- 1
SELECT
    title,
    release_date
FROM
    Film
ORDER BY
    release_date
DESC;

-- 2
SELECT
    firstname,
    lastname,
    TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) AS age
FROM
    Actor
WHERE
    TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) > 30
ORDER BY
    lastname,
    firstname;

-- 3
SELECT
    Actor.firstname,
    Actor.lastname
FROM
    Actor
INNER JOIN Actor_roles ON Actor.id = Actor_roles.FK_Actor
INNER JOIN Actor_film ON Actor.id = Actor_film.FK_actor
INNER JOIN Film ON Actor_film.FK_film = Film.id
WHERE
    Actor_roles.isPrimary = 1 AND Film.id = 1;

-- 4
SELECT
    Film.title
FROM
    Film
INNER JOIN Actor_film ON Film.id = Actor_film.FK_film
WHERE
    Actor_film.FK_actor = 1;

-- 5
INSERT INTO Film(
    title,
    duration,
    release_date,
    FK_director
)
VALUES('Film8', 200, '2003-12-24', 4);

-- 6
INSERT INTO Actor(firstname, lastname, birthdate)
VALUES('Tom', 'Holland', '1996-06-01');

-- 7
UPDATE
    Film
SET
    title = 'Jurassic Park',
    duration = 180,
    release_date = '2022-10-13',
    FK_director = 2
WHERE
    id = 1;

-- 8
DELETE
FROM
    Actor
WHERE
    id = 1;

-- 9
SELECT
    firstname,
    lastname
FROM
    Actor
ORDER BY
    id
DESC
LIMIT 3;

-- 10
SELECT
    title
FROM
    Film
ORDER BY
    release_date
LIMIT 1;

-- 11
SELECT
    firstname,
    lastname
FROM
    Actor
ORDER BY
    birthdate
DESC
LIMIT 1;

-- 12
SELECT
    COUNT(*)
FROM
    Film
WHERE
    YEAR(release_date) = 1990;

-- 13
SELECT
    COUNT(FK_actor)
FROM
    Actor_film;
