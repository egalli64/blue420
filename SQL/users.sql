drop table if exists users;
create table users (
user_id integer primary key auto_increment, First_name varchar(30), Last_name varchar(30), Password varchar(20)); 
insert into users (first_name, last_name, password) values ("Magda", "Boscarino", "magda1"), ("Angelica", "Iantorno", "angelica1");