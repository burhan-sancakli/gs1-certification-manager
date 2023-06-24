begin
INSERT INTO gs1_issuer (
    --id, 
    certi, orgn, agreement_open, agreement_close)
VALUES (
    --1, 
    3, 6, '11/04/2012', '11/04/2027');

INSERT INTO gs1_issuer (
    --id, 
    certi, orgn, agreement_open, agreement_close)
VALUES (
    --2, 
    4, 6, '03/01/2021', '03/01/2031');

INSERT INTO gs1_issuer (
    --id, 
    certi, orgn, agreement_open, agreement_close)
VALUES (
    --3, 
    1, 3, '03/06/2016', '03/06/2026');

INSERT INTO gs1_issuer (
    --id, 
    certi, orgn, agreement_open, agreement_close)
VALUES (
    --4, 
    2, 3, '09/01/2022', '09/01/2024');

--commit;
--alter table gs1_issuer
--modify id generated always as identity restart start with 5;
end;