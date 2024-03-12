WITH visits AS (
SELECT pizzeria.name,
    COUNT(*) AS count,
    'visit' AS action_type
FROM person_visits
INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name, action_type
ORDER BY count DESC
LIMIT 3
), orders AS (
SELECT pizzeria.name,
       COUNT(*) AS count,
       'order' AS action_type
FROM person_order
INNER JOIN menu ON person_order.menu_id = menu.id
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name, action_type
ORDER BY count DESC
LIMIT 3
)
SELECT * FROM visits
UNION
SELECT * FROM orders
ORDER BY action_type, count DESC;

