use chirpr;

create table Users(
	id int not null auto_increment primary key,
    name varchar(50) not null,
	email varchar(50) not null,
	password text null,
	_created datetime default current_timestamp);
    
  create table Chirps(
	id int not null auto_increment primary key,
	userid int not null,
	content text not null,
	location varchar(100) not null,
	_created datetime default current_timestamp);
    