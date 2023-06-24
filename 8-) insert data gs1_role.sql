begin
insert into gs1_role (
    --id,
    org,
    assignment,
    name
) values (
    --1,
    1,
    10,
    'GS1'
);

insert into gs1_role (
    --id,
    org,
    assignment,
    name
) values (
    --2,
    2,
    3,
    'SCHOOL'
);

insert into gs1_role (
    --id,
    org,
    assignment,
    name
) values (
    --3,
    2,
    2,
    'SCHOOL'
);

--commit;
--alter table gs1_role
--modify id generated always as identity restart start with 4;
end;