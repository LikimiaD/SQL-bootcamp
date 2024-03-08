with diff AS (
    SELECT pizzeria.name AS pizzeria_name, ABS(COUNT(*) FILTER ( WHERE person.gender = 'male' ) - COUNT(*) FILTER ( WHERE person.gender = 'female' )) AS diff_col
    FROM pizzeria
    INNER JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
    INNER JOIN person ON person_visits.person_id = person.id
    GROUP BY pizzeria.name
)

SELECT pizzeria_name FROM diff
WHERE diff_col > 0
ORDER BY pizzeria_name;