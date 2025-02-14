CREATE OR REPLACE TABLE keepcoding.bootcamps AS
SELECT 1 AS id, 'Web' AS name, 7000 AS price, 3000 AS duration, DATETIME('2021-01-01') AS start_date, DATETIME('2021-07-01') AS end_date UNION ALL
SELECT 2 AS id, 'IA' AS name, 6800 AS price, 3100 AS duration, DATETIME('2021-02-01') AS start_date, DATETIME('2021-07-03') AS end_date UNION ALL
SELECT 3 AS id, 'Big data' AS name, 7200 AS price, 2850 AS duration, DATETIME('2021-01-01') AS start_date, DATETIME('2021-07-03') AS end_date UNION ALL
SELECT 4 AS id, 'Mobile' AS name, 7000 AS price, 3000 AS duration, DATETIME('2021-01-02') AS start_date, DATETIME('2021-06-21') AS end_date UNION ALL
SELECT 5 AS id, 'Cybersegurity' AS name, 7150 AS price, 2900 AS duration, DATETIME('2021-01-05') AS start_date, DATETIME('2021-06-21') AS end_date;

CREATE OR REPLACE TABLE keepcoding.modules AS
SELECT 1 AS id, 'HTML' AS name, 240 AS duration, DATETIME('2021-01-01') AS start_date, DATETIME('2021-03-16') AS end_date, 1 AS bootcamp_id UNION ALL
SELECT 2 AS id, 'Javascript' AS name, 230 AS duration, DATETIME('2021-03-17') AS start_date, DATETIME('2021-05-12') AS end_date, 1 AS bootcamp_id UNION ALL
SELECT 3 AS id, 'CSS' AS name, 270 AS duration, DATETIME('2021-05-13') AS start_date, DATETIME('2021-07-01') AS end_date, 1 AS bootcamp_id UNION ALL
SELECT 4 AS id, 'BBDD' AS name, 210 AS duration, DATETIME('2021-01-01') AS start_date, DATETIME('2021-03-10') AS end_date, 2 AS bootcamp_id UNION ALL
SELECT 5 AS id, 'BBDD' AS name, 210 AS duration, DATETIME('2021-01-01') AS start_date, DATETIME('2021-03-10') AS end_date, 3 AS bootcamp_id UNION ALL
SELECT 6 AS id, 'Docker' AS name, 236 AS duration, DATETIME('2021-03-11') AS start_date, DATETIME('2021-05-02') AS end_date, 3 AS bootcamp_id UNION ALL
SELECT 7 AS id, 'Machine learning' AS name, 270 AS duration, DATETIME('2021-03-11') AS start_date, DATETIME('2021-05-01') AS end_date, 2 AS bootcamp_id UNION ALL
SELECT 8 AS id, 'HTML' AS name, 240 AS duration, DATETIME('2021-01-01') AS start_date, DATETIME('2021-03-16') AS end_date, 4 AS bootcamp_id UNION ALL
SELECT 9 AS id, 'Javascript' AS name, 230 AS duration, DATETIME('2021-03-17') AS start_date, DATETIME('2021-05-12') AS end_date, 4 AS bootcamp_id UNION ALL
SELECT 10 AS id, 'CSS' AS name, 250 AS duration, DATETIME('2021-05-13') AS start_date, DATETIME('2021-06-21') AS end_date, 4 AS bootcamp_id UNION ALL
SELECT 11 AS id, 'Docker' AS name, 236 AS duration, DATETIME('2021-03-11') AS start_date, DATETIME('2021-05-02') AS end_date, 5 AS bootcamp_id UNION ALL
SELECT 12 AS id, 'Cloud computing' AS name, 212 AS duration, DATETIME('2021-05-03') AS start_date, DATETIME('2021-06-21') AS end_date, 5 AS bootcamp_id;

CREATE OR REPLACE TABLE keepcoding.teachers AS
SELECT 1 AS id, 'Patricia Carmona' AS name, 28 AS age, 'patricia@gmail.com' AS email, 660235584 AS phone, 10 AS rate, 4 AS modules_id UNION ALL
SELECT 2 AS id, 'Patricia Carmona' AS name, 28 AS age, 'patricia@gmail.com' AS email, 660235584 AS phone, 10 AS rate, 5 AS modules_id UNION ALL
SELECT 3 AS id, 'Jorge Ramirez' AS name, 32 AS age, 'Jorge@gmail.com' AS email, 664266578 AS phone, 8 AS rate, 1 AS modules_id UNION ALL
SELECT 4 AS id, 'Jorge Ramirez' AS name, 32 AS age, 'Jorge@gmail.com' AS email, 664266578 AS phone, 8 AS rate, 8 AS modules_id UNION ALL
SELECT 5 AS id, 'Ana Fuentes' AS name, 35 AS age, 'Ana@gmail.com' AS email, 646521233 AS phone, 9 AS rate, 2 AS modules_id UNION ALL
SELECT 6 AS id, 'Ana Fuentes' AS name, 35 AS age, 'Ana@gmail.com' AS email, 646521233 AS phone, 9 AS rate, 9 AS modules_id UNION ALL
SELECT 7 AS id, 'Ramón Gomez' AS name, 27 AS age, 'Ramón@gmail.com' AS email, 651231867 AS phone, 10 AS rate, 3 AS modules_id UNION ALL
SELECT 8 AS id, 'Ramón Gomez' AS name, 27 AS age, 'Ramón@gmail.com' AS email, 651231867 AS phone, 10 AS rate, 10 AS modules_id UNION ALL
SELECT 9 AS id, 'Juan Lopez' AS name, 24 AS age, 'Juan@gmail.com' AS email, 688423921 AS phone, 10 AS rate, 6 AS modules_id UNION ALL
SELECT 10 AS id, 'Maria Navarro' AS name, 25 AS age, 'Maria@gmail.com' AS email, 651646432 AS phone, 10 AS rate, 7 AS modules_id UNION ALL
SELECT 11 AS id, 'Jonathan Rander' AS name, 32 AS age, 'Jonathan@gmail.com' AS email, 676758541 AS phone, 8 AS rate, 11 AS modules_id UNION ALL
SELECT 12 AS id, 'Jhon Doe' AS name, 29 AS age, 'JhonDoe@gmail.com' AS email, 652214586 AS phone, 7 AS rate, 12 AS modules_id;

CREATE OR REPLACE TABLE keepcoding.students AS
SELECT 1 AS id, 'Patricia Bernardo' AS name, 22 AS age, 'patriciaB@gmail.com' AS email, 6 AS grade, 1 AS assistance_faults, 660235584 AS phone, 10 AS rate, 4 AS bootcamp_id, 1 current_module UNION ALL
SELECT 2 AS id, 'Carlos Carmona' AS name, 28 AS age, 'CarlosC@gmail.com' AS email, 7 AS grade, 0 AS assistance_faults, 660235584 AS phone, 10 AS rate, 5 AS bootcamp_id, 1 current_module UNION ALL
SELECT 3 AS id, 'Jorge Fernandez' AS name, 39 AS age, 'JorgeF@gmail.com' AS email, 7 AS grade, 0 AS assistance_faults, 664266578 AS phone, 8 AS rate, 1 AS bootcamp_id, 3 current_module UNION ALL
SELECT 4 AS id, 'Marta Ramirez' AS name, 30 AS age, 'MartaR@gmail.com' AS email, 8 AS grade, 0 AS assistance_faults, 664266578 AS phone, 8 AS rate, 8 AS bootcamp_id, 2 current_module UNION ALL
SELECT 5 AS id, 'Ana Paterna' AS name, 35 AS age, 'AnaP@gmail.com' AS email, 6 AS grade, 3 AS assistance_faults, 646521233 AS phone, 9 AS rate, 2 AS bootcamp_id, 1 current_module UNION ALL
SELECT 6 AS id, 'Roberto Fuentes' AS name, 25 AS age, 'RobertoF@gmail.com' AS email, 6 AS grade, 0 AS assistance_faults, 646521233 AS phone, 9 AS rate, 9 AS bootcamp_id, 5 current_module UNION ALL
SELECT 7 AS id, 'Sara Gomez' AS name, 27 AS age, 'SaraG@gmail.com' AS email, 7 AS grade, 0 AS assistance_faults, 651231867 AS phone, 10 AS rate, 3 AS bootcamp_id, 11 current_module UNION ALL
SELECT 8 AS id, 'Ramón Juarez' AS name, 27 AS age, 'RamónJ@gmail.com' AS email, 8 AS grade, 0 AS assistance_faults, 651231867 AS phone, 10 AS rate, 10 AS bootcamp_id, 11 current_module UNION ALL
SELECT 9 AS id, 'Juan Lopez' AS name, 24 AS age, 'JuanL@gmail.com' AS email, 7 AS grade, 10 AS assistance_faults, 688423921 AS phone, 10 AS rate, 6 AS bootcamp_id, 5 current_module UNION ALL
SELECT 10 AS id, 'Maria Perez' AS name, 25 AS age, 'MariaP@gmail.com' AS email, 5 AS grade, 1 AS assistance_faults, 651646432 AS phone, 1 AS rate, 7 AS bootcamp_id, 1 current_module UNION ALL
SELECT 11 AS id, 'Pedro Smith' AS name, 32 AS age, 'PedroS@gmail.com' AS email, 9 AS grade, 0 AS assistance_faults, 676758541 AS phone, 8 AS rate, 11 AS bootcamp_id, 2 current_module UNION ALL
SELECT 12 AS id, 'Jhon Doe' AS name, 29 AS age, 'JhonD@gmail.com' AS email, 10 AS grade, 0 AS assistance_faults, 652214586 AS phone, 7 AS rate, 12 AS bootcamp_id, 3 current_module;


CREATE OR REPLACE TABLE keepcoding.reviews AS
SELECT 1 AS id, 'The best ever' AS review, 8 AS rate, 3 AS bootcamp_id, 4 AS modules_id,6 AS student_id UNION ALL
SELECT 2 AS id, 'I can´t think for any other bootcamp that can compete with this' AS review, 10 AS rate, 1 AS bootcamp_id, 1 AS modules_id,2 AS student_id UNION ALL
SELECT 1 AS id, 'I don´t like very much, but it´s worthy' AS review, 7 AS rate, 5 AS bootcamp_id, 11 AS modules_id,6 AS student_id UNION ALL
SELECT 1 AS id, 'Is very difficult' AS review, 3 AS rate, 1 AS bootcamp_id, 1 AS modules_id,10 AS student_id;
