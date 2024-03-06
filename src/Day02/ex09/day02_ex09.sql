WITH meaty_milf AS (
    SELECT person.name AS meaty FROM person_order
    INNER JOIN menu ON person_order.menu_id = menu.id
    INNER JOIN person ON person_order.person_id = person.id
    WHERE person.gender = 'female' AND pizza_name = 'pepperoni pizza'
), cheesy_milf AS (
    SELECT person.name AS cheesy FROM person_order
    INNER JOIN menu ON person_order.menu_id = menu.id
    INNER JOIN person ON person_order.person_id = person.id
    WHERE person.gender = 'female' AND pizza_name = 'cheese pizza'
)
SELECT DISTINCT name FROM person
INNER JOIN meaty_milf ON person.name = meaty_milf.meaty
INNER JOIN cheesy_milf ON person.name = cheesy_milf.cheesy
ORDER BY name;
