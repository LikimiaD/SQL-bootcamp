CREATE OR REPLACE FUNCTION fnc_persons_female() RETURNS SETOF person AS $$
    BEGIN
        RETURN QUERY SELECT * FROM person WHERE gender = 'female';
    END;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION fnc_persons_male() RETURNS SETOF person AS $$
    BEGIN
        RETURN QUERY SELECT * FROM person WHERE gender = 'male';
    END;
$$ LANGUAGE plpgsql;
SELECT *
FROM fnc_persons_female();
SELECT *
FROM fnc_persons_male();