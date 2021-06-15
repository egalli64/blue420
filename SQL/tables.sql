use blue;

drop table if exists film_location;
drop table if exists locations;
drop table if exists films;
drop table if exists users;


create table users (

user_id integer primary key auto_increment, 
		first_name varchar(30), 
		last_name varchar(30), password varchar(20)); 
        
insert into users (first_name, last_name, password) 
	values ("Magda", "Boscarino", "magda1"), 
			("Angelica", "Iantorno", "angelica1");
            
            commit;

create table films (
film_id integer primary key,
		title varchar(100), 
        director varchar(30));
insert into films (film_id, title, director) values (100, "Matrimonio all'italiana", "Vittorio de Sica");
insert into films (film_id, title, director) values (101, "La dolce vita", "Federico Fellini");
insert into films (film_id, title, director) values (102, "Quo Vado", "Checco Zalone");
insert into films (film_id, title, director) values (103, "Benvenuti al Sud", "Luca Miniero");
insert into films (film_id, title, director) values (104, "Noi, i ragazzi dello zoo di Berlino", "Uli Edel");

commit;


create table locations (
location_id integer primary key auto_increment,
city varchar(30),
		name varchar(30));
insert into locations (city, name) values ("Naples", "Quartieri spagnoli"); 
insert into locations (city, name) values ("Rome", "Fontana di Trevi"); 
insert into locations (city, name) values ("Fogliano", "Parco Nazionale del Circeo");
insert into locations (city, name) values ("Milan", "Duomo di Milano");
insert into locations (city, name) values ("Berlin", "Bahnhof zoo");

commit;


create table film_location (
		location_id integer,
        film_id integer,
		constraint film_location_pk primary key(film_id, location_id),
		constraint film_location_fk foreign key(film_id) references films(film_id),
		constraint location_film_fk foreign key(location_id) references locations(location_id));
insert into film_location (location_id, film_id) values (1, 100);
insert into film_location (location_id, film_id) values (2, 101);
insert into film_location (location_id, film_id) values (3, 102);
insert into film_location (location_id, film_id) values (4, 103);
insert into film_location (location_id, film_id) values (5, 104);

commit;

