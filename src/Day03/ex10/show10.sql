SELECT person.name, menu.pizza_name, order_date FROM person_order
INNER JOIN person ON person_order.person_id = person.id
INNER JOIN menu ON person_order.menu_id = menu.id
WHERE order_date = '2022-02-24'