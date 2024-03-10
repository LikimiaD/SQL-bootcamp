CREATE VIEW task01 AS (
    SELECT *
    FROM all_var
    ORDER BY cost
);

SELECT * FROM task01;