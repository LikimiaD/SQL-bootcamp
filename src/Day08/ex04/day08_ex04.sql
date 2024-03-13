-- Session #1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Session #1
SELECT * FROM pizzeria WHERE id = 1;
-- Session #2
UPDATE pizzeria SET rating = 3.0 WHERE id = 1;
-- Session #2
COMMIT;
-- Session #1
SELECT * FROM pizzeria WHERE id = 1;
-- Session #1
COMMIT;
-- Session #1
SELECT * FROM pizzeria WHERE id = 1;
-- Session #2
SELECT * FROM pizzeria WHERE id = 1;