WITH ids AS (
    SELECT generate_series(1, (SELECT COUNT(*) FROM person)) AS temp_id,
           generate_series((SELECT MAX(id) FROM person_order) + 1, ((SELECT MAX(id) FROM person_order) + (SELECT COUNT(*) FROM person)), 1) AS id
)
INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT ids.id,
       person.id,
       (SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id,
       '2022-02-25' AS order_date
FROM ids
JOIN person ON ids.temp_id = person.id;