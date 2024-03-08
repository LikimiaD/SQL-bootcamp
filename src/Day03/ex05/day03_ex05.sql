SELECT pizzeria.name AS pizzeria_name
FROM person_visits
LEFT JOIN person_order ON person_visits.person_id = person_order.person_id AND person_visits.visit_date = person_order.order_date
INNER JOIN person ON person_visits.person_id = person.id
INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
WHERE (person_order.person_id IS NULL) AND person.name = 'Andrey';