CREATE OR REPLACE FUNCTION fnc_person_update_audit()
RETURNS trigger AS $$
BEGIN
    INSERT INTO person_audit
    VALUES (current_timestamp, 'U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    RETURN NULL;
END
$$ LANGUAGE plpgsql;
CREATE OR REPLACE TRIGGER trg_person_update_audit
AFTER UPDATE ON person
FOR EACH ROW
EXECUTE FUNCTION fnc_person_update_audit();
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;