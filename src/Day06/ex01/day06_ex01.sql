WITH base_call AS (
    SELECT
      person_id,
      pizzeria_id,
      CASE
        WHEN COUNT(*) = 1 THEN 10.5
        WHEN COUNT(*) = 2 THEN 22
        ELSE 30
      END AS discount
    FROM person_order
    INNER JOIN menu ON person_order.menu_id = menu.id
    GROUP BY person_id, pizzeria_id
    ORDER BY person_id, pizzeria_id
)
INSERT INTO person_discounts
SELECT row_number() over (ORDER BY person_id) AS id,
       person_id,
       pizzeria_id,
       discount
FROM base_call;