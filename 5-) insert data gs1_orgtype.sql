begin
insert into gs1_orgtype (
    --id,
    abreviation,
    name
) values (
    --1,
    'GS1',
    'GS1'
);

insert into gs1_orgtype (
    --id,
    abreviation,
    name
) values (
    --2,
    'COM',
    'Company'
);

insert into gs1_orgtype (
    --id,
    abreviation,
    name
) values (
    --3,
    'HE',
    'Higher Education'
);

insert into gs1_orgtype (
    --id,
    abreviation,
    name
) values (
    --4,
    'VOC',
    'Vocational School'
);
end;
--commit;
--alter table gs1_orgtype
--modify id generated always as identity restart start with 5;