INSERT INTO menu
VALUES (
    (SELECT COALESCE(MAX(id), 0) + 1 FROM menu),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    'sicilian pizza',
    900
);