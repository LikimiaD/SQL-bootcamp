SELECT
  DISTINCT person_order.order_date AS action_date,
  person.name AS person_name
FROM
  person_order
  JOIN person_visits ON order_date = visit_date
  JOIN person ON person_order.person_id = person.id
ORDER BY
  action_date,
  person_name DESC