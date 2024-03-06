WITH missing_dates AS (
    SELECT days::date AS missing_date
    FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days
)
SELECT missing_date FROM missing_dates
FULL JOIN (SELECT visit_date,
                  person_id
           FROM person_visits
           WHERE  person_id = 1 OR person_id = 2) AS dates
ON missing_dates.missing_date = dates.visit_date
WHERE dates.visit_date IS NULL
ORDER BY missing_date;
