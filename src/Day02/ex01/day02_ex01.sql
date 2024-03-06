SELECT visit_date AS missing_date FROM person_visits
WHERE (visit_date BETWEEN '2022-01-01' AND '2022-01-10')
GROUP BY visit_date
HAVING COUNT(person_id) FILTER ( WHERE person_id = '1' OR person_id = '2' ) = 0
ORDER BY visit_date;