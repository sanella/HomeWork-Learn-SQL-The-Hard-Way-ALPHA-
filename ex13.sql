.headers on

/*Exercise 13: Migrating And Evolving Data*/
/*
ALTER TABLE person add column dead integer;

alter table person add column phone_number integer;

alter table person add column salary float;

ALTER TABLE person ADD COLUMN dob DATETIME;

ALTER TABLE pet ADD COLUMN dob DATETIME;

alter table person_pet add column purchased_on DATETIME;

alter table pet add column id_parent integer;
*/
/*
update person set dead = 0 where id = 0;
update person set dead = 0 where id = 1;

update person set phone_number = 111222 where id = 0;
update person set phone_number = 222333 where id = 1;

update person set salary = 1500 where id = 0;
update person set salary = 2000 where id = 1;

update person set dob = 2015 where id =0;
update person set dob = 2014 where id = 1;

update pet set dob = 2015 where id =0;
update pet set dob = 2004 where id =1;
update pet set dob = 2007 where id =2;
update pet set dob = 2013 where id =3;
/*
update person_pet set id_parent = 0 where id = 2;
update person_pet set id_parent = 3 where id = 1;
*/

update person_pet set purchased_on = 2012 where person_id = 2;
update person_pet set purchased_on = 2015 where person_id = 1;

Select pet.name, person.first_name 
	from pet, person_pet, person
	where 
	pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person_pet.purchased_on > 2004;
