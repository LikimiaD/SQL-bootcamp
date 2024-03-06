with pizza AS (SELECT * FROM menu
WHERE pizza_name LIKE '%mushroom%' OR pizza_name LIKE '%pepperoni%')

SELECT pizza_name AS pizza_name, pizzeria.name AS pizzeria_name, price  FROM pizza
JOIN pizzeria ON pizza.pizzeria_id = pizzeria.id
ORDER BY pizza_name, pizzeria_name;