-- create database
create database Exercise18DB;

use Exercise18DB;

-- create tables
create table PERSON(
	ID smallint not null primary key AUTO_INCREMENT,
    FirstName varchar(35) not null,
    LastName varchar(35) not null,
    Address smallint not null,
    Personal smallint not null,
    foreign key(Address) references ADDRESSES(ID),
    foreign key(Personal) references PERSONALDETAILS(ID));
    
create table ADDRESSES(
	ID smallint not null primary key AUTO_INCREMENT,
    FirstLine varchar(100) not null,
    SecondLine varchar(100),
    Town varchar(35) not null,
    Postcode varchar(8) not null,
    PhoneNum varchar(11),
    Email varchar(100));
    
create table PERSONALDETAILS(
	ID smallint not null primary key AUTO_INCREMENT,
    DateOfBirth date not null,
    User_cat enum('Staff', 'Child', 'Adult') not null,
    Gender varchar(35));

create table BOOKS(
	ID smallint not null primary key AUTO_INCREMENT,
    BookTitle varchar(200) not null,
    Author varchar(200) not null,
    Genre smallint not null,
    FictionCat enum('Fiction', 'Non-fiction'),
    CheckOutStatus enum('available', 'due') not null,
    foreign key(Genre) references GENRES(ID));
    
create table GENRES(
	ID smallint not null primary key AUTO_INCREMENT,
    Genre varchar(35) not null);
    
create table LOANS(
	ID smallint not null primary key AUTO_INCREMENT,
    PersonID smallint not null,
    BookID smallint not null,
    LoanDate date not null,
    ReturnDate date,
    foreign key (PersonID) references PERSON(ID),
    foreign key (BookID) references BOOKS(ID));
 
	