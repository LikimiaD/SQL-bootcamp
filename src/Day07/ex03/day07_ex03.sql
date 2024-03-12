WITH visits AS (
SELECT pizzeria.name,
    COUNT(*) AS count,
    'visit' AS action_type
FROM person_visits
INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name, action_type
ORDER BY count DESC
), orders AS (
SELECT pizzeria.name,
       COUNT(*) AS count,
       'order' AS action_type
FROM person_order
INNER JOIN menu ON person_order.menu_id = menu.id
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name, action_type
ORDER BY count DESC
)
SELECT pizzeria.name,
       COALESCE(visits.count, 0) + COALESCE(orders.count, 0) AS total_count
FROM pizzeria
FULL JOIN visits ON pizzeria.name = visits.name
FULL JOIN orders ON pizzeria.name = orders.name
ORDER BY total_count DESC, name;