SELECT person.name,
       menu.pizza_name,
       menu.price,
       (menu.price - (menu.price / 100 * person_discounts.discount)) AS discount_price,
       pizzeria.name
FROM person_order
INNER JOIN menu ON person_order.menu_id = menu.id
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
INNER JOIN person ON person_order.person_id = person.id
INNER JOIN person_discounts ON person.id = person_discounts.person_id AND pizzeria.id = person_discounts.pizzeria_id
ORDER BY person.name, menu.pizza_name;