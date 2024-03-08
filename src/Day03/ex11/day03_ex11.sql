UPDATE menu
SET price = (SELECT price FROM menu WHERE pizza_name = 'greek pizza') * 0.9
WHERE pizza_name = 'greek pizza';