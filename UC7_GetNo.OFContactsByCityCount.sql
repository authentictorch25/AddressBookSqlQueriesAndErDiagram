Create database address_book;
use address_book;
select * from AddressBook;
Create table AddressBook
(first_name varchar(50) not null,
last_name varchar(50) not null,
address varchar(100) not null,
city varchar(20) not null,
state varchar(20) not null,
zip bigint not null,
phone bigint not null,
email varchar(100) not null);

Insert into AddressBook (first_name,last_name,address,city, state,zip, phone,email) 
values
('Akash', 'Singh', '40/728','Waidhan', 'MadhyaPradesh',486886,9407387969,'akash@gmail.com' ),
('Amit', 'Saha', '40/729','Waidhan', 'MadhyaPradesh',486886,9407387970,'amit@gmail.com'),
('Ashutosh', 'Sameer','40/730','Waidhan', 'MadhyaPradesh',486886,9407387971,'ashutosh@gmail.com'),
('Namrata', 'Yadav', '41/728','Vindhyanagar', 'MadhyaPradesh',486885,9407387972,'namrata@gmail.com');

Update AddressBook set address = '40/728' where first_name = 'Namrata';

Delete from AddressBook where first_name = 'Amit';

select first_name, last_name from AddressBook where city = 'Waidhan' or state = 'MadhyaPradesh';
select COUNT(city) as no_of_contacts from AddressBook;