CREATE TABLE route (
    id SERIAL PRIMARY KEY,
    point1 VARCHAR(50) NOT NULL,
    point2 VARCHAR(50) NOT NULL,
    cost INTEGER NOT NULL
);
INSERT INTO route(point1, point2, cost)
VALUES
('A', 'D', 20),
('D', 'A', 20),

('B', 'D', 25),
('D', 'B', 25),

('C', 'D', 30),
('D', 'C', 30),

('A', 'C', 15),
('C', 'A', 15),

('A', 'B', 10),
('B', 'A', 10),

('B', 'C', 35),
('C', 'B', 35);

CREATE VIEW all_var AS
(
WITH RECURSIVE rec_call AS (
    SELECT r1.id,
           r1.point1,
           r1.point2,
           r1.cost,
           ARRAY [r1.point1, r1.point2]::VARCHAR[] AS visited
    FROM route r1
    WHERE r1.point1 = 'A'

    UNION ALL

    SELECT r2.id,
           r2.point1,
           r2.point2,
           rec_call.cost + r2.cost,
           rec_call.visited || r2.point2
    FROM route r2
        JOIN rec_call ON rec_call.point2 = r2.point1
    WHERE CASE
        WHEN (array_length(visited, 1) = 4) THEN r2.point2 = 'A'
        ELSE NOT (r2.point2 = ANY (rec_call.visited))
    END)
    SELECT cost, visited FROM rec_call
    WHERE array_length(visited, 1) = (SELECT MAX(array_length(visited, 1)) FROM rec_call)
    );

CREATE VIEW task00 AS (
    SELECT *
    FROM all_var
    ORDER BY cost
    LIMIT 1
);

SELECT * FROM task00;