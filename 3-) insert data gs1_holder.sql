begin
-- load data
 
insert into gs1_holder (
    --id,
    firstname,
    surname,
    email
) values (
    --1,
    'Burhan',
	'Sancakli',
    'burhan.sancakli@student.um.si'
);

insert into gs1_holder (
    --id,
    firstname,
    surname,
    email
) values (
    --2,
    'Meral',
    'Zeren',
    'meral.zener@gmail.com'
);

insert into gs1_holder (
    --id,
    firstname,
    surname,
    email
) values (
    --3,
    'Franc',
    'Hocevar',
    'franc.hocevar1992@gmail.com'
);

insert into gs1_holder (
    --id,
    firstname,
    surname,
    email
) values (
    --4,
    'Gregor',
    'Gregoric',
    'gregorgregoric@gmail.com'
);

insert into gs1_holder (
    --id,
    firstname,
    surname,
    email
) values (
    --5,
    'Kemal',
    'Kilicdaroglu',
    'kk@gmail.com'
);

--commit;
--alter table gs1_holder
--modify id generated always as identity restart start with 6;
 
-- load data
end;