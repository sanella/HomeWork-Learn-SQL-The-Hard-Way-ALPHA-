
/*PERSON*/
insert into person (id, first_name, last_name, age) VALUES (0, 'Zed', 'Shaw', 37);
/* EXTRA CREDIT :D*/
insert into person (id, first_name, last_name, age) VALUES (1, 'Sanela', 'Grcic', 25);

/*PET*/
insert into pet (id, name, breed, age, dead) VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);
insert into pet (id, name, breed, age, dead) VALUES (1, 'Gigantor', 'Robot', 1, 1);
/* EXTRA CREDIT :D*/
insert into pet (id, name, breed, age, dead) VALUES (2, 'Cicko', 'Parrot', 9, 9);
insert into pet (id, name, breed, age, dead) VALUES (3, 'Aristotel', 'turtle', 5, 5);
	

/*Exercise 4: Insert Referential Data*/
insert into person_pet (person_id, pet_id) values (0, 0);
insert into person_pet (person_id, pet_id) values (0, 1);

/* EXTRA CREDIT :D*/
insert into person_pet values (1, 2);
insert into person_pet values (1, 3);

/*Exercise 5: Selecting Data*/