SELECT person.name, pizzeria.name, visit_date  FROM person_visits
INNER JOIN person ON person_visits.person_id = person.id
INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
WHERE visit_date = '2022-02-24'