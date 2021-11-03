create table languages (
    id serial PRIMARY KEY,
    name character varying(50),
    description text,
    front_end boolean DEFAULT false,
    back_end boolean DEFAULT false,
    price numeric(5,2),
    created_at timestamp without time zone DEFAULT current_timestamp,
    updated_at timestamp without time zone DEFAULT current_timestamp
);

insert into languages (name, description, front_end, back_end, price)
values ('Ruby','Ruby is an interpreted, high-level, general purpose...', FALSE, TRUE, 199.99);

insert into languages (name, description, front_end, back_end, price)
values ('Python','Python is an interpreted, high-level, general purpose...', FALSE, TRUE, 199.99);

insert into languages (name, description, front_end, back_end, price)
values ('Javascript','Javascript is a programming language that conform...', TRUE, TRUE, 99.99);

insert into languages (name, description, front_end, back_end, price)
values ('Rust','Rust is a multi-paradigm programming language de...', FALSE, TRUE, 499.99);

insert into languages (name, description, front_end, back_end, price)
values ('Golang','Go is a statically typed, compiled programming lang...', FALSE, TRUE, 499.99);

create table instructors (
    id serial PRIMARY KEY, 
    first_name character varying(50),
    last_name character varying(50),
    lesson_id integer,
    created_at timestamp without time zone DEFAULT current_timestamp,
    updated_at timestamp without time zone DEFAULT current_timestamp
);

insert into instructors (first_name, last_name, lesson_id)
values ('Adrian','Co', 1);

insert into instructors (first_name, last_name, lesson_id)
values ('Analyn','Cajocson', 1);

insert into instructors (first_name, last_name, lesson_id)
values ('Pau','Riosa', 3);

insert into instructors (first_name, last_name, lesson_id)
values ('Maurus','Victor', 3);

insert into instructors (first_name, last_name, lesson_id)
values ('John','Young', 6);

SELECT l.name, i.first_name, i.last_name FROM languages l INNER JOIN instructors i ON i.lesson_id = l.id;

SELECT l.name, i.first_name, i.last_name FROM languages l LEFT JOIN instructors i ON i.lesson_id = l.id;

CREATE table classrooms (
    id serial PRIMARY KEY,
    student_id serial,
    section character varying(1)
);

INSERT into classrooms (section)
values ('A');

INSERT into classrooms (section)
values ('B');

INSERT into classrooms (section)
values ('C');


SELECT * FROM students s INNER JOIN classrooms c ON c.id = s.id;

SELECT * FROM students s LEFT JOIN classrooms c ON c.id = s.id;

SELECT * FROM students s RIGHT JOIN classrooms c ON c.id = s.id;

SELECT * FROM students s FULL JOIN classrooms c ON c.id = s.id;