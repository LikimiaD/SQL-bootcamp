SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT pizza_name,
       pizzeria.name AS pizzeria_name
FROM menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id;