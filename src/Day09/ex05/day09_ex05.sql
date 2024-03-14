DROP FUNCTION IF EXISTS fnc_persons_female();
DROP FUNCTION IF EXISTS fnc_persons_male();
DROP FUNCTION IF EXISTS fnc_persons(varchar);

CREATE OR REPLACE FUNCTION fnc_persons(pgender VARCHAR DEFAULT 'female') RETURNS SETOF person AS $$
    BEGIN
        IF (pgender = 'female') THEN
            RETURN QUERY SELECT * FROM person WHERE gender = 'female';
        ELSEIF (pgender = 'male') THEN
            RETURN QUERY SELECT * FROM person WHERE gender = 'male';
        END IF;
    END;
$$ LANGUAGE plpgsql;

SELECT * FROM fnc_persons(pgender := 'male');
SELECT * FROM fnc_persons('male');
SELECT * FROM fnc_persons();