begin
insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --1,
    4,
    1,
    '01/03/2021',
    '01/03/2031'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --2,
    2,
    1,
    '09/01/2022',
    '09/01/2024'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --3,
    1,
    3,
    '06/06/2017',
    '06/06/2025'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --4,
    1,
    3,
    '06/06/2023',
    '06/06/2033'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --5,
    4,
    4,
    '06/06/2023',
    '06/06/2028'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --6,
    2,
    4,
    '09/01/2022',
    '09/01/2024'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --7,
    1,
    5,
    '03/06/2018',
    '03/06/2026'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --8,
    3,
    5,
    '11/04/2012',
    '11/04/2027'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --9,
    2,
    5,
    '09/01/2022',
    '09/01/2024'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --10,
    3,
    2,
    '11/04/2012',
    '11/04/2027'
);

insert into gs1_certificate (
    --id,
    certtype,
    holder,
    issue_date,
    expiration_date
) values (
    --11,
    4,
    2,
    '01/03/2021',
    '01/03/2031'
);
end;
--commit;
--alter table gs1_certificate
--modify id generated always as identity restart start with 12;