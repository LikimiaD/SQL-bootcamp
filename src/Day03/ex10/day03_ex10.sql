INSERT INTO person_order
VALUES
(
 (SELECT COALESCE(MAX(id), 0) + 1 FROM person_order),
 (SELECT id FROM person WHERE name = 'Denis'),
 (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
 '2022-02-24'
);
INSERT INTO person_order
VALUES
(
 (SELECT COALESCE(MAX(id), 0) + 1 FROM person_order),
 (SELECT id FROM person WHERE name = 'Irina'),
 (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
 '2022-02-24'
);