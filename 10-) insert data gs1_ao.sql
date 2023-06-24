begin
insert into gs1_ao (
    --id,
    orgn,
    assignment
) values (
    --1,
    1,
    10
);
insert into gs1_ao (
    --id,
    orgn,
    assignment
) values (
    --2,
    2,
    2
);
insert into gs1_ao (
    --id,
    orgn,
    assignment
) values (
    --3,
    2,
    3
);

--commit;
--alter table gs1_ao
--modify id generated always as identity restart start with 4;
end;