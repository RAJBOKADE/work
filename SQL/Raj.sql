create table person2 (id int primary key default(nextval('person2_seq_id')), first_name varchar(20), last_name varchar(20));

create table address2 (id int, add_1 varchar(30), add_2 varchar (30), city varchar(20), zipcode int, foreign key (id) references person2(id));

insert into person2 values(nextval('person2_seq_id'), 'Raj', 'Bokade');
insert into person2 values(nextval('person2_seq_id'), 'Ashok', 'Patil');
insert into person2 values(nextval('person2_seq_id'), 'Eknath', 'Shinde');
insert into person2 values(nextval('person2_seq_id'), 'Devendra', 'Fadanvis');
insert into person2 values(nextval('person2_seq_id'), 'Shubham', 'Jain');

select * from person2;

insert into address2 values(1001, 'Khadakpada', 'near Pulse Hospital', 'Kalyan', 421301);
insert into address2 values(1002, 'Tisgaon Naka', 'near Mcd', 'Kalyan', 421306);
insert into address2 values(1003, 'Metro Mall', 'near Andheri Station', 'Andheri', 402001);
insert into address2 values(1004, 'Cinemax', 'Landmark Rambuag', 'Mumbai', 400301);
insert into address2 values(1005, 'Rambuag', 'J.M Road', 'Navi Mumbai', 400506);


select * from address2;

select * from person2 inner join address2 on person2.id = address2.id;