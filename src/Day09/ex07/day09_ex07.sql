CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr NUMERIC[] DEFAULT ARRAY [1])
RETURNS NUMERIC AS $$
    BEGIN
        RETURN (SELECT MIN(i) FROM unnest($1) i);
    END;
$$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);
SELECT func_minimum();