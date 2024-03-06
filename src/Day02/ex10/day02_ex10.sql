with for_cross_join AS (
    SELECT * FROM person
)
SELECT DISTINCT person.name AS person_name1, for_cross_join.name AS person_name2, person.address AS common_address FROM person
CROSS JOIN for_cross_join
WHERE person.address = for_cross_join.address AND person.name != for_cross_join.name AND person.id > for_cross_join.id
ORDER BY person_name1, person_name2, common_address;