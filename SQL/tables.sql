use blue;

drop table if exists films;
create table films (
film_id integer primary key,
		title varchar(30), 
        director varchar(30), 
        city_id varchar(10),
      constraint films_city_fk foreign key (city_id) references cities(city_id));
insert into films (film_id, title, director) values (100, "Matrimonio all'italiana", "Vittorio de Sica");
insert into films (film_id, title, director) values (101, "La dolce vita", "Federico Fellini");
insert into films (film_id, title, director) values (102, "Quo Vado", "Checco Zalone");
insert into films (film_id, title, director) values (103, "Benvenuti al Sud", "Luca Miniero");
insert into films (film_id, title, director) values (104, "Noi, i ragazzi dello zoo di Berlino", "Uli Edel");

commit;

drop table if exists locations;
create table locations (
location_id integer primary key auto_increment,
city varchar(30),
		name varchar(30),
        film_id integer,
         constraint cities_film_fk foreign key (film_id) references films(film_id));
insert into locations (city, location) values ("Naples", "Quartieri spagnoli"); 
insert into locations (city, location) values ("Rome", "Fontana di Trevi"); 
insert into locations (city, location) values ("Fogliano", "Parco Nazionale del Circeo");
insert into locations (city, location) values ("Milan", "Duomo di Milano");
insert into lcoations (city, location) values ("Berlin", "Bahnhof zoo");

commit;

drop table if exists location_film;
create table location_film (
		location_id integer,
        film_id integer );
insert into location_film (location_id, film_id) values (1, 100);
insert into location_film (location_id, film_id) values (2, 101);
insert into location_film (location_id, film_id) values (3, 102);
insert into location_film (location_id, film_id) values (4, 103);
insert into location_film (location_id, film_id) values (5, 104);

        

