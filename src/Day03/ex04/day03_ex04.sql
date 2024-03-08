WITH man_choise AS (
    SELECT pizzeria.name AS pizzeria_name,
           COUNT(*) FILTER ( WHERE person.gender = 'female' ) AS counter
    FROM person
    INNER JOIN person_order ON person.id = person_order.person_id
    INNER JOIN menu ON person_order.menu_id = menu.id
    INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    GROUP BY pizzeria.name
    HAVING COUNT(*) FILTER ( WHERE person.gender = 'female' ) = 0
), female_choise AS (
    SELECT pizzeria.name AS pizzeria_name,
           COUNT(*) FILTER ( WHERE person.gender = 'male' ) AS counter
    FROM person
    INNER JOIN person_order ON person.id = person_order.person_id
    INNER JOIN menu ON person_order.menu_id = menu.id
    INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    GROUP BY pizzeria.name
    HAVING COUNT(*) FILTER ( WHERE person.gender = 'male' ) =  0
)
SELECT pizzeria_name FROM man_choise
UNION SELECT pizzeria_name FROM female_choise;