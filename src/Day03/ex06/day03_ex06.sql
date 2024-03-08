SELECT menu.pizza_name AS pizza_name,
       p1.name AS pizzeria_name_1,
       p2.name AS pizzeria_name_2,
       menu.price AS price
FROM menu
INNER JOIN pizzeria AS p1 ON menu.pizzeria_id = p1.id
CROSS JOIN menu AS m2
INNER JOIN pizzeria AS p2 ON m2.pizzeria_id = p2.id
WHERE menu.pizza_name = m2.pizza_name AND m2.id < menu.id AND menu.price = m2.price;