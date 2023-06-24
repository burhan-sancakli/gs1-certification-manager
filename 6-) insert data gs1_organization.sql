begin
insert into gs1_organization (
    --id,
    master,
    orgtype,
    name,
    address,
    country,
    city,
    member_since
) values (
    --1,
    null,
    1,
    'GS1',
    '300 Princeton South Corporate Center, 08628, Ewing Township, United States',
    'United States',
    'New Jersey',
    '01/01/1974'
);

insert into gs1_organization (
    --id,
    master,
    orgtype,
    name,
    address,
    country,
    city,
    member_since
) values (
    --2,
    null,
    4,
    'Srednja elektro-racunalniška Šola Maribor',
    'Srednja elektro-racunalniška Šola, Smetanova 6, 2000 Maribor',
    'Slovenia',
    'Maribor',
    '09/10/1952'
);

insert into gs1_organization (
    --id,
    master,
    orgtype,
    name,
    address,
    country,
    city,
    member_since
) values (
    --3,
    null,
    3,
    'Univerza v Mariboru Fakulteta za organizacijske vede',
    'Srednja Kidričeva cesta 55a SI-4000 Kranj',
    'Slovenia',
    'Kranj',
    '10/01/1995'
);

insert into gs1_organization (
    --id,
    master,
    orgtype,
    name,
    address,
    country,
    city,
    member_since
) values (
    --4,
    1,
    1,
    'GS1 Belgium & Luxembourg',
    'Galerie Ravenstein 4/B10, 1000 Bruxelles, Belgium',
    'Belgium',
    'Brussels',
    '01/01/1997'
);

insert into gs1_organization (
    --id,
    master,
    orgtype,
    name,
    address,
    country,
    city,
    member_since
) values (
    --5,
    4,
    1,
    'GS1 Turkey',
    'Mustafa Kemal, TOBB Ikiz Kuleler, Dumlupinar Blv. No 252 C Blok 13.Kat, 06530 Çankaya/Ankara, Türkiye',
    'Turkey',
    'Ankara',
    '01/01/2001'
);

insert into gs1_organization (
    --id,
    master,
    orgtype,
    name,
    address,
    country,
    city,
    member_since
) values (
    --6,
    4,
    1,
    'GS1 Slovenia',
    'Dimiceva 9, 1000, Ljubljana, Slovenia',
    'Slovenia',
    'Ljubljana',
    '01/01/2008'
);

--commit;
--alter table gs1_organization
--modify id generated always as identity restart start with 7;
end;