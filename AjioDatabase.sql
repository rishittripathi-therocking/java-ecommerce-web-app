drop database ajio;

create database ajio;

use ajio;

create table user(id int primary key auto_increment, name varchar(30) not null,
email varchar(50) not null,password varchar(30) not null)auto_increment=401;

create table product(id int primary key auto_increment, name varchar(30),price int,
image_url varchar(30),category varchar(30))auto_increment=101;

create table orders(id int primary key auto_increment, user_id int,
total_amount int,order_date timestamp(3),foreign key(user_id) references user(id))auto_increment=301;

create table order_details(id int primary key auto_increment, 
order_id int,product_id int,quantity int,foreign key(order_id) references orders (id),
foreign key(product_id) references product(id))auto_increment=501;


insert into product(name,price,image_url,category) values ('Brown Casual',3500,'casual1.jpg','Casual Shoes');

insert into product(name,price,image_url,category) values ('Blue Casual',2999,'casual2.jpg','Casual Shoes');

insert into product(name,price,image_url,category) values ('Black Casual',3999,'casual3.jpg','Casual Shoes');

insert into product(name,price,image_url,category) values ('Mixed Casual',4599,'casual4.jpg','Casual Shoes');

insert into product(name,price,image_url,category) values ('Cream Casual',3599,'casual5.jpg','Casual Shoes');

insert into product(name,price,image_url,category) values ('Brown Formal',5999,'formal1.jpg','Formal Shoes');

insert into product(name,price,image_url,category) values ('Black Formal',6599,'formal2.jpg','Formal Shoes');

insert into product(name,price,image_url,category) values ('Pure Leather',8999,'formal3.jpg','Formal Shoes');

insert into product(name,price,image_url,category) values ('Mixed Formal',7999,'formal4.jpg','Formal Shoes');

insert into product(name,price,image_url,category) values ('Brown Mixed Formal',8599,'formal5.jpg','Formal Shoes');

insert into product(name,price,image_url,category) values ('Black Ray Bean',2399,'glass1.jpeg','Sunglasses');

insert into product(name,price,image_url,category) values ('Curved Ray Bean',2499,'glass2.png','Sunglasses');

insert into product(name,price,image_url,category) values ('Light Shade',2999,'glass3.jpeg','Sunglasses');

insert into product(name,price,image_url,category) values ('Funky Glass',2799,'glass4.jpeg','Sunglasses');

insert into product(name,price,image_url,category) values ('Stylish Round',2999,'glass5.jpeg','Sunglasses');

insert into product(name,price,image_url,category) values ('Black Sports',2599,'sports1.jpg','Sports Shoes');

insert into product(name,price,image_url,category) values ('Nature Gloss',4599,'sports2.jpg','Sports Shoes');

insert into product(name,price,image_url,category) values ('Light Blue',3799,'sports3.jpg','Sports Shoes');

insert into product(name,price,image_url,category) values ('Spunky Red',3999,'sports4.jpg','Sports Shoes');

insert into product(name,price,image_url,category) values ('Fila Sports',6999,'sports5.jpg','Sports Shoes');

insert into product(name,price,image_url,category) values ('Cartier',9999,'watch1.jpg','Watches');

insert into product(name,price,image_url,category) values ('Sports Watch',4599,'watch2.jpeg','Watches');

insert into product(name,price,image_url,category) values ('Formal Watch',7999,'watch3.jpeg','Watches');

insert into product(name,price,image_url,category) values ('Blue Shine',8999,'watch4.jpg','Watches');

insert into product(name,price,image_url,category) values ('Men Formal',8999,'watch5.jpeg','Watches');
