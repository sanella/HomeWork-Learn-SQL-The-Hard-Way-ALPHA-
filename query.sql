/*Exercise 5: Selecting Data*/

.headers on
/*
select * from person;
select name, age from pet;
select name, age from pet where dead = 0;
select * from person where first_name != 'Sanela';

/*Extra Credit*/
/*Select * from pet where age > 10; 

Select * from person where age > 25;

Select * from pet where age < 10 AND dead < 5;

/*Exercise 6: Select Across Many Tables*/

/*SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet, person_pet, person
    WHERE
    pet.id = person_pet.pet_id AND
    person_pet.person_id = person.id AND
    person.first_name = "Zed";

/* Exercise 7: Deleting Data*/
/*
delete from pet where dead = 1;
*/
/* Exercise 8: Deleting Using Other Tables*/

/*
DELETE FROM pet WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
    WHERE pet_id NOT IN (
        SELECT id FROM pet
    );

SELECT * FROM person_pet;
*/


/*Exercise 9: Updating Data*/

update person set first_name = "Hanka Paldum"
	where first_name = 'Sanela';

UPDATE pet set name = "Pujdo" 
	where id = 2;

select * from person;
select * from pet;


/*Exercise 10: Updating Complex Data*/

UPDATE pet SET name = "Sanela's Pet" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Hanka Paldum"
);

SELECT * FROM pet;



/*Exercise 11: Replacing Data*/

REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Zed', 'Novi', 80);

  select * from person;

/* Exercise 12: Destroying And Altering Tables*/

/*brisanje tabele*/
DROP TABLE IF EXISTS person;

create table person(
	id integer primary key,
	first_name text,
	last_name text,
	age integer
	);

/* preimenovanje tabele*/
ALTER TABLE person RENAME TO peoples;

/*dodavanje kolone*/
ALTER TABLE peoples ADD COLUMN hatred INTEGER;

ALTER TABLE peoples RENAME TO person;

.schema person

/* DROP TABLE person; */




