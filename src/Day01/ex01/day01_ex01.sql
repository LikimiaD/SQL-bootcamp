SELECT
  object_name
FROM
  (
    SELECT
      name AS object_name
    FROM
      person
    ORDER BY
      name
  ) AS name
UNION ALL
SELECT
  object_name
FROM
  (
    SELECT
      pizza_name AS object_name
    FROM
      menu
    ORDER BY
      pizza_name
  ) AS menu;