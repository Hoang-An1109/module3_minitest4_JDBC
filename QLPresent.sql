create database QLPresent;
 
 use QLPresent;
 
 create table Present(
 id int not null auto_increment primary key,
 code varchar(30) not null,
 name varchar(120) not null,
 price double not null,
 ship varchar(30) not null,
 img varchar(120)
 );
 
 insert into present(code, name, price, ship, img) values ('ABC123','Product 1', 10.99,'Free','image1.jpg');
 insert into present(code, name, price, ship, img) values ('DEF456','Product 2', 19.99,'Standard','image2.jpg');
 insert into present(code, name, price, ship, img) values ('GHI789','Product 3', 29.99,'Express','image3.jpg');
 insert into present(code, name, price, ship, img) values ('JKL012','Product 4', 14.99,'Standard','image4.jpg');
 insert into present(code, name, price, ship, img) values ('MNO345','Product 5', 24.99,'Free','image5.jpg');
 
 select * from present;
 drop database qlpresent;