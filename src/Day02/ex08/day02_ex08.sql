with male_hunter AS (
    SELECT * FROM person_order
    INNER JOIN menu ON person_order.menu_id = menu.id
    INNER JOIN person ON person_order.person_id = person.id
    WHERE person.address IN ('Moscow', 'Samara') AND menu.pizza_name IN ('pepperoni pizza', 'mushroom pizza') AND person.gender = 'male'
)

SELECT DISTINCT name FROM male_hunter
ORDER BY name DESC;