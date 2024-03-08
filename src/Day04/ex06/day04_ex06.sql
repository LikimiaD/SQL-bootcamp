CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS (
    SELECT pizzeria.name AS pizzeria_name FROM person_visits
    INNER JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
    INNER JOIN person ON person_visits.person_id = person.id
    INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
    WHERE visit_date = '2022-01-08' AND person.name = 'Dmitriy' AND menu.price < 800
);
SELECT * FROM mv_dmitriy_visits_and_eats
