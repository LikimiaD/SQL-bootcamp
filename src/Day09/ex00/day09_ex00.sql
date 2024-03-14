CREATE TABLE IF NOT EXISTS person_audit (
    created TIMESTAMP WITH TIME ZONE DEFAULT current_timestamp NOT NULL,
    type_event CHAR(1) NOT NULL,
    row_id BIGINT NOT NULL,
    name varchar not null,
    age integer not null default 10,
    gender varchar default 'female' not null,
    address varchar
);
CREATE OR REPLACE FUNCTION fnc_person_insert_audit()
RETURNS trigger AS $$
BEGIN
    INSERT INTO person_audit
    VALUES (current_timestamp, 'I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
    RETURN NULL;
END
$$ LANGUAGE plpgsql;
CREATE OR REPLACE TRIGGER trg_person_insert_audit
AFTER INSERT ON person
FOR EACH ROW
EXECUTE FUNCTION fnc_person_insert_audit();
INSERT INTO person(id, name, age, gender, address)
VALUES (10,'Damir', 22, 'male', 'Irkutsk');