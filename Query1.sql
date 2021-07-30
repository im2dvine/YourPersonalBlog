-- only one at a time will run, highlight to run!!!!!!!!!!!!

-- drops the table labeled locations
drop table locations;


-- creates table locations containing id, name, date_created
create table locations(
	id int not null auto_increment primary key,
	name varchar(50) not null,
	_created datetime default current_timestamp);
    
    
-- alters table users by creating a foreign key that references locations id
alter table users
add constraint fk_userlocation
foreign key (locationid)
references locations(id);


-- selects all data from locations and displays
select * from locations;

-- selects all data from users and displays
select * from users;

-- selects data from locations and displays
select
	u.name,
    l.name as location
from users u
join locations l on l.id = u.locationid;


update locations
set name = 'The Moon'
where name = 'HQ'

select * from locations;


create table courses(
	id int not null auto_increment primary key,
	locationid int not null,
	instructorid int not null,
	name varchar(50) not null,
	_created datetime default current_timestamp)
    
    
    alter table courses
add constraint fk_courselocation
foreign key (locationid)
references locations(id);

-- only one at a time will run, highlight to run

alter table courses
add constraint fk_courseinstructor
foreign key (instructorid)
references users(id);


insert into courses (locationid, instructorid, name)
values(1,1, 'Full Stack Development Summer');

insert into courses (locationid, instructorid, name)
values(5,4, 'Full Stack Development Summer');


select
	c.name as CourseName,
    u.name as InstructorName,
    l.name as CourseLocation,
    l2.name as InstructorLocation
from courses c
join users u on c.instructorid = u.id
join locations l on l.id = c.locationid
join locations l2 on l2.id = u.locationid