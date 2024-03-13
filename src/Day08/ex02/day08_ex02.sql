-- Session #1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Session #1
SELECT * FROM pizzeria;
-- Session #2
SELECT * FROM pizzeria;
-- Session #1
UPDATE pizzeria SET rating = 4 WHERE id = 1;
-- Session #2
UPDATE pizzeria SET rating = 3.6 WHERE id = 1;
-- Session #1
COMMIT;
-- Session #2
COMMIT;
-- Session #1
SELECT * FROM pizzeria;
-- Session #2
SELECT * FROM pizzeria;