with couple_orders AS (
    SELECT * FROM person_order
    INNER JOIN person ON person_order.person_id = person.id
    WHERE person.name = 'Anna' OR person.name = 'Denis'
)
SELECT pizza_name, pizzeria.name AS pizzeria_name FROM couple_orders
INNER JOIN menu ON couple_orders.menu_id = menu.id
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY pizza_name, pizzeria_name;