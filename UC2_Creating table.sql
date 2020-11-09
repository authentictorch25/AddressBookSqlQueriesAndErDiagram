Create database address_book;
use address_book;

Create table AddressBook
(first_name varchar(50) not null,
last_name varchar(50) not null,
address varchar(100) not null,
city varchar(20) not null,
state varchar(20) not null,
zip bigint not null,
phone bigint not null,
email varchar(100) not null);
