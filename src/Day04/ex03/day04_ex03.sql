SELECT * FROM v_generated_dates
EXCEPT SELECT person_visits.visit_date FROM person_visits
ORDER BY generated_date