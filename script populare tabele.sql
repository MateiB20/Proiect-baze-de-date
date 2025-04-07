INSERT INTO ram (nume, tip_memorie)
VALUES ('Corsair Vengeance LPX 16GB DDR4-3200', 'DDR4');
INSERT INTO gpu (nume, slot_pcie)
VALUES ('NVIDIA GeForce RTX 3060 Ti 8GB GDDR6', 1);
INSERT INTO cpu (nume, tip_memorie, slot_pcie)
VALUES ('Intel Core i7-12700K 12-Core 3.6GHz', 'DDR4', 1);
INSERT INTO detalii_comanda (adresa, numar_telefon, data_livrare)
VALUES('Strada Nicolae Iorga, București, România', '0712345678', 
TO_DATE('2026-01-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO cpu_gpu (cpu_cpu_id, gpu_gpu_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 1),
(SELECT gpu_id FROM gpu WHERE gpu_id = 1));
INSERT INTO cpu_ram (cpu_cpu_id, ram_ram_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 1),
(SELECT ram_id FROM ram WHERE ram_id = 1));
INSERT INTO comanda (email, data, ram_id, gpu_id, cpu_id, d_id)
VALUES (
    'cumparator.tehnic@exemplu.ro',
    TO_DATE('2025-12-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
    (SELECT ram_id FROM ram WHERE ram_id = 1),  
    (SELECT gpu_id FROM gpu WHERE gpu_id = 1),
    (SELECT cpu_id FROM cpu WHERE cpu_id = 1),  
    (SELECT d_id FROM detalii_comanda WHERE d_id = 1)  
);





INSERT INTO cpu (nume, tip_memorie, slot_pcie)
VALUES ('Intel Core i7-4770K 4-Core 3.5GHz', 'DDR3', 1);
INSERT INTO ram (nume, tip_memorie)
VALUES ('G.SKILL Ripjaws X 16GB DDR3-2400', 'DDR3');
INSERT INTO gpu (nume, slot_pcie)
VALUES ('NVIDIA GeForce RTX 3080 10GB GDDR6X', 1);
INSERT INTO detalii_comanda (adresa, numar_telefon, data_livrare)
VALUES ('Strada Ion Luca Caragiale, Cluj-Napoca, România', '0723456789', 
TO_DATE('2026-01-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO cpu_gpu (cpu_cpu_id, gpu_gpu_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 2),
(SELECT gpu_id FROM gpu WHERE gpu_id = 2));
INSERT INTO cpu_ram (cpu_cpu_id, ram_ram_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 2),
(SELECT ram_id FROM ram WHERE ram_id = 2));
INSERT INTO comanda (email, data, ram_id, gpu_id, cpu_id, d_id)
VALUES (
    'client.tehnologie@exemplu.ro',
    TO_DATE('2025-12-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
    (SELECT ram_id FROM ram WHERE ram_id = 2),  
    (SELECT gpu_id FROM gpu WHERE gpu_id = 2),
    (SELECT cpu_id FROM cpu WHERE cpu_id = 2),  
    (SELECT d_id FROM detalii_comanda WHERE d_id = 2)  
);





INSERT INTO cpu (nume, tip_memorie, slot_pcie)
VALUES ('AMD Ryzen 9 7950X 16-Core 4.5GHz', 'DDR4', 1);
INSERT INTO ram (nume, tip_memorie)
VALUES ('Corsair Vengeance LPX 32GB DDR4-3600', 'DDR4');
INSERT INTO gpu (nume, slot_pcie)
VALUES ('Intel UHD Graphics 770', 0);
INSERT INTO detalii_comanda (adresa, numar_telefon, data_livrare)
VALUES ('Bulevardul Unirii, București, România', '0751234567', 
TO_DATE('2026-01-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO cpu_gpu (cpu_cpu_id, gpu_gpu_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 3),
(SELECT gpu_id FROM gpu WHERE gpu_id = 3));
INSERT INTO cpu_ram (cpu_cpu_id, ram_ram_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 3),
(SELECT ram_id FROM ram WHERE ram_id = 3));
INSERT INTO comanda (email, data, ram_id, gpu_id, cpu_id, d_id)
VALUES (
    'new.client@exemplu.ro',
    TO_DATE('2025-12-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
    (SELECT ram_id FROM ram WHERE ram_id = 3), 
    (SELECT gpu_id FROM gpu WHERE gpu_id = 3),
    (SELECT cpu_id FROM cpu WHERE cpu_id = 3),  
    (SELECT d_id FROM detalii_comanda WHERE d_id = 3) 
);





INSERT INTO cpu (nume, tip_memorie, slot_pcie)
VALUES ('Intel Core i5-12600K 10-Core 3.7GHz', 'DDR4', 1);
INSERT INTO ram (nume, tip_memorie)
VALUES ('Crucial Ballistix 32GB DDR4-3600', 'DDR4');
INSERT INTO gpu (nume, slot_pcie)
VALUES ('AMD Radeon RX 7900 XTX 24GB GDDR6', 1);
INSERT INTO detalii_comanda (adresa, numar_telefon, data_livrare)
VALUES ('Strada Mihai Eminescu, Timișoara, România', '0723456789', 
TO_DATE('2026-02-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO cpu_gpu (cpu_cpu_id, gpu_gpu_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 4),
(SELECT gpu_id FROM gpu WHERE gpu_id = 4));
INSERT INTO cpu_ram (cpu_cpu_id, ram_ram_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 4),
(SELECT ram_id FROM ram WHERE ram_id = 4));
INSERT INTO comanda (email, data, ram_id, gpu_id, cpu_id, d_id)
VALUES (
    'user.tehnic@exemplu.ro',
    TO_DATE('2025-12-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
    (SELECT ram_id FROM ram WHERE ram_id = 4),  
    (SELECT gpu_id FROM gpu WHERE gpu_id = 4),
    (SELECT cpu_id FROM cpu WHERE cpu_id = 4),  
    (SELECT d_id FROM detalii_comanda WHERE d_id = 4)  
);





INSERT INTO ram (nume, tip_memorie)
VALUES ('Corsair Vengeance 32GB DDR5-6000', 'DDR5');
INSERT INTO gpu (nume, slot_pcie)
VALUES ('AMD Radeon RX 7900 XTX 24GB GDDR6', 1);
INSERT INTO cpu (nume, tip_memorie, slot_pcie)
VALUES ('AMD Ryzen 9 7950X 16-Core 4.5GHz DDR5', 'DDR5', 1);
INSERT INTO detalii_comanda (adresa, numar_telefon, data_livrare)
VALUES ('Strada Mihai Eminescu, Cluj-Napoca, România', '0723456789', 
TO_DATE('2026-02-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO cpu_gpu (cpu_cpu_id, gpu_gpu_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 5),
(SELECT gpu_id FROM gpu WHERE gpu_id = 5));
INSERT INTO cpu_ram (cpu_cpu_id, ram_ram_id)
VALUES(
(SELECT cpu_id FROM cpu WHERE cpu_id = 5),
(SELECT ram_id FROM ram WHERE ram_id = 5));
INSERT INTO comanda (email, data, ram_id, gpu_id, cpu_id, d_id)
VALUES (
    'user.tehnic@exemplu.ro',
    TO_DATE('2025-12-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
    (SELECT ram_id FROM ram WHERE ram_id = 5),  
    (SELECT gpu_id FROM gpu WHERE gpu_id = 5),
    (SELECT cpu_id FROM cpu WHERE cpu_id = 5),  
    (SELECT d_id FROM detalii_comanda WHERE d_id = 5)  
);





select nume, tip_memorie from comanda cm, ram r where 
cm.ram_id=r.ram_id; --informatii ram din comanda
select nume, tip_memorie, slot_pcie from comanda cm, cpu c where 
cm.cpu_id=c.cpu_id; --informatii cpu din comanda
select nume, slot_pcie from comanda cm, gpu g where 
cm.gpu_id=g.gpu_id; --informatii gpu din comanda
select adresa, numar_telefon, data_livrare 
from comanda cm, detalii_comanda d where cm.d_id=d.d_id; 
--informatii tabel detalii_comanda aferenta comenzii
select cm.email, r.nume as ram_nume, r.tip_memorie as ram_tipmemorie,  
c.nume as cpu_nume, c.tip_memorie as cpu_tipmemorie, 
c.slot_pcie as cpu_slotpcie,
g.nume as gpu_nume, g.slot_pcie as gpu_slotpcie,
d.adresa, d.numar_telefon, d.data_livrare
from comanda cm, ram r, cpu c, gpu g, detalii_comanda d 
where cm.ram_id=r.ram_id and cm.cpu_id=c.cpu_id and cm.gpu_id=g.gpu_id 
and cm.d_id=d.d_id; --informatii complete





delete from cpu_gpu;
delete from cpu_ram;
delete from comanda;
delete from cpu;
delete from detalii_comanda;
delete from gpu;
delete from ram;

drop sequence comanda_c_id_seq;
drop sequence cpu_cpu_id_seq;
drop sequence detalii_comanda_d_id_seq;
drop sequence gpu_gpu_id_seq;
drop sequence ram_ram_id_seq;

CREATE SEQUENCE comanda_c_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER comanda_c_id_trg BEFORE
    INSERT ON comanda
    FOR EACH ROW
    WHEN ( new.c_id IS NULL )
BEGIN
    :new.c_id := comanda_c_id_seq.nextval;
END;
/

CREATE SEQUENCE cpu_cpu_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER cpu_cpu_id_trg BEFORE
    INSERT ON cpu
    FOR EACH ROW
    WHEN ( new.cpu_id IS NULL )
BEGIN
    :new.cpu_id := cpu_cpu_id_seq.nextval;
END;
/

CREATE SEQUENCE detalii_comanda_d_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER detalii_comanda_d_id_trg BEFORE
    INSERT ON detalii_comanda
    FOR EACH ROW
    WHEN ( new.d_id IS NULL )
BEGIN
    :new.d_id := detalii_comanda_d_id_seq.nextval;
END;
/

CREATE SEQUENCE gpu_gpu_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER gpu_gpu_id_trg BEFORE
    INSERT ON gpu
    FOR EACH ROW
    WHEN ( new.gpu_id IS NULL )
BEGIN
    :new.gpu_id := gpu_gpu_id_seq.nextval;
END;
/

CREATE SEQUENCE ram_ram_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER ram_ram_id_trg BEFORE
    INSERT ON ram
    FOR EACH ROW
    WHEN ( new.ram_id IS NULL )
BEGIN
    :new.ram_id := ram_ram_id_seq.nextval;
END;
/
