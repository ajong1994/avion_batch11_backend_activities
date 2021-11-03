create table lessons (
    id integer PRIMARY KEY,                                                                             
    name character varying(255) NOT NULL,                                                               
    description text,                                                                                   
    front_end boolean DEFAULT false,                                                                    
    back_end boolean DEFAULT false,                                                                     
    price numeric(8,2) DEFAULT 0.0,                                                                     
    created_at timestamp without time zone NOT NULL,                                                    
    updated_at timestamp without time zone NOT NULL                                                     
);

insert into lessons (id, name, description, price, created_at, updated_at, back_end)
values (1, 'Ruby', 'Ruby is an interpreted, high-level, general-purpose programming language.', 199.99, current_timestamp, current_timestamp, true);

insert into lessons (id, name, description, price, created_at, updated_at, back_end)
values (2, 'Python', 'Python is an interpreted, high-level, general-purpose programming language.', 99.99, current_timestamp, current_timestamp, true);

insert into students (first_name, last_name, age, location)
values ('Theresa','Joseph', 21, 'Manila');

insert into students (first_name, last_name, age, location)
values ('Issac','Gray', 19, 'Laguna');

insert into students (first_name, last_name, age, location)
values ('Zack','Matthews', 22, 'Marikina');

insert into students (first_name, last_name, age, location)
values ('Finn','Lam', 25, 'Manila');

update students set first_name='Ivan', middle_name='Ingram', last_name='Howard', age=25, location='Bulacan' where id = 1;

create sequence my_serial as integer start 3 owned by students.id;
alter table students alter column id set default nextval('my_serial');