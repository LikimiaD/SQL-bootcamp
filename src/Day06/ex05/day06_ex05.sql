COMMENT ON TABLE person_discounts IS 'Table with personal discounts';
COMMENT ON COLUMN person_discounts.id IS 'UNIQUE id for each column';
COMMENT ON COLUMN person_discounts.person_id IS 'Person ID for correct work JOINs';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Pizzeria ID for correct work JOINs';
COMMENT ON COLUMN person_discounts.discount IS 'Personal discount for each person';