-- Session #1
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE id = 1;
SELECT * FROM pizzeria;
-- Session #2
SELECT * FROM pizzeria;
-- Session #1
COMMIT;
-- Session #2
SELECT * FROM pizzeria;