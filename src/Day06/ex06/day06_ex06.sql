CREATE SEQUENCE seq_person_discounts
START WITH 1
INCREMENT BY 1;

SELECT setval('seq_person_discounts', (SELECT MAX(id) FROM person_discounts) + 1);

ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');
