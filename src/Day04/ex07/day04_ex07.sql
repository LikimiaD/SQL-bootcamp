INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
        (SELECT COALESCE(MAX(id), 0) + 1 FROM person_visits),
        (SELECT id FROM person WHERE person.name = 'Dmitriy'),
        (SELECT pizzeria_id FROM menu WHERE price < 800 LIMIT 1),
        '2022-01-08'
);
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
SELECT * FROM mv_dmitriy_visits_and_eats;