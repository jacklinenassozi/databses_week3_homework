
use farm1_databases;

-- CREATE TABLE animals (
-- `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
-- `name` varchar(255) NOT NULL,
-- `type` TEXT NOT NULL,
-- `color` TEXT NOT NULL,
-- PRIMARY KEY (id)
-- )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- CREATE TABLE barns (
-- `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
-- `name` varchar(255) NOT NULL,
-- `size` TEXT NOT NULL,
-- PRIMARY KEY (id)
 -- )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
 
-- CREATE TABLE workers ( 
-- `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
-- `name` varchar(255) NOT NULL,
-- `salary` INT UNSIGNED NOT NULL ,
-- `email` TEXT NOT NULL,
-- `phone` int(20) unsigned NOT NULL,
-- PRIMARY KEY (id)
-- )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- CREATE TABLE animal_barns (
-- animal_id int(10) unsigned NOT NULL,
-- barn_id int(10) unsigned NOT NULL,
-- PRIMARY KEY (animal_id, barn_id),
-- CONSTRAINT `fk_animal_barns_animal_id` FOREIGN KEY (animal_id) REFERENCES animals (id) ON DELETE CASCADE,
-- CONSTRAINT `fk_animal_barns_barn_id` FOREIGN KEY (barn_id) REFERENCES barns (id) ON DELETE CASCADE
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- CREATE TABLE animal_workers (
-- animal_id int(10) unsigned NOT NULL,
-- worker_id int(10) unsigned NOT NULL,
-- PRIMARY KEY (worker_id, animal_id),
-- CONSTRAINT `fk_animal_workers _animal_id` FOREIGN KEY (animal_id) REFERENCES animals (id) ON DELETE CASCADE,
-- CONSTRAINT `fk_animal_workers_worker_id` FOREIGN KEY (worker_id) REFERENCES workers (id) ON DELETE CASCADE
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- SELECT * FROM animals;

-- INSERT INTO  animals (id, name, type, color) values (1, 'cows', 'friesian','black');
-- INSERT INTO  animals (id, name, type, color) values (2, 'goats','sebei','brown');
-- INSERT INTO  animals (id, name, type, color) values (3, 'sheep', 'ankole','white');
-- INSERT INTO  animals (id, name, type, color) values (4, 'rabbits', 'rex','black_white');
-- INSERT INTO  animals (id, name, type, color) values (5, 'dogs', 'akita','brown_black');

-- SELECT * FROM barns;
-- INSERT INTO  barns (id, name, size) values (1,'gambrel','small');
-- INSERT INTO  barns (id, name, size) values (2,'crib','medium');
-- INSERT INTO  barns (id, name, size) values (3,'round','small');
-- INSERT INTO  barns (id, name, size) values (4,'frame','medium');
-- INSERT INTO  barns (id, name, size) values (5,'prairie','big');


-- SELECT * FROM workers;
-- INSERT INTO  workers (id, name, salary,email,phone) values (1,'julie','200000','najk@gmail.com','20304050'); 
-- INSERT INTO  workers(id, name, salary,email,phone) values (2,'cristaberi','400000','chris@yahoo.com','20304090');
-- INSERT INTO  workers (id, name, salary,email,phone) values (3,'rossette','320000','rose@hotmail.com','20183909');
-- INSERT INTO workers (id, name, salary,email,phone) values (4,'frank','500000','fran@gmail.com','20167898');
-- INSERT INTO  workers(id, name, salary,email,phone) values (5,'praise','4509090','pra@gmail.com','5070980');

-- SELECT * FROM animal_barns;
-- INSERT INTO animal_barns VALUES (1, 3);
-- INSERT INTO animal_barns VALUES (3, 5);
-- INSERT INTO animal_barns VALUES (2, 4);
-- INSERT INTO animal_barns VALUES (4, 4);
-- INSERT INTO animal_barns VALUES (5, 3);

-- SELECT * FROM animal_workers;
-- INSERT INTO animal_workers VALUES (3, 1);
-- INSERT INTO animal_workers VALUES (5, 3);
-- INSERT INTO animal_workers VALUES (4, 2);
-- INSERT INTO animal_workers VALUES (4, 4);
-- INSERT INTO animal_workers VALUES (3, 5);
-- Creating an index on the name column of the workers table.

-- CREATE INDEX `idx_name` ON workers (name);

-- SELECT barns.id,barns.name,animals.id,animals.name,animals.type,animals.color FROM animals
-- INNER JOIN barns ON animals.id = barns.id
-- INNER JOIN workers ON animals.id = workers.id;

