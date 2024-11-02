create table Person(personId int(20),lastName varchar(20),firstName varchar(20));
create table Address(addressId int(20),personId int(20),city varchar(20),state varchar(20));
insert into Person values(1,"Wang","Allen");
insert into Person values(2,"Alice","Bob");
insert into Address values(1,2,"New York City","New York");
insert into Address values(2,3,"Leetcode","California");
SELECT Person.firstName, Person.lastName, Address.city, Address.state
FROM Person
LEFT JOIN Address
ON Person.personId = Address.personId;
