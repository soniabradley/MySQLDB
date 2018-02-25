    create table favorite_foods (
        food varchar(50) not null,
        score integer (10)
    );

    insert into favorite_foods (food, score)
    values ("burger",100);

    insert into favorite_foods (food,score)
    values ("french fries",99);
    

-- to start with a clean slate, remove all current table listings
    delete from favorite_foods
    where food="burger";

    delete from favorite_foods
    where food="french fries";

-- remember, all previous entries must be deleted
    SELECT * FROM favoritesdb.favorite_foods;

-- update information that has been stored within the database
    update favorite_foods
    set score=90
    where food="burger";

-- TABLES MAY BE DELETED FROM TABLES COLUMN

-- CREATE NEW TABLES, songs, movies
 create table favorite_songs (
        song varchar(50) not null,
        score integer (10)
    );

 create table favorite_movies (
        movie varchar(50) not null,
        score integer (10)
    );

    insert into favorite_songs (song,score)
    values ("Seasons In The Sun",100),("Blinded By The Light", 95);

    insert into favorite_movies (movie,score)
    values ("Goonies",99),("Gone with the Wind",95);

-- SHARE SCORE
select favorite_movies.movie,favorite_songs.song
from favorite_songs
inner join favorite_movies
on favorite_movies.score=favorite_songs.score;

-- not sure what this does?
SELECT * FROM favoritesdb.favorite_songs;

