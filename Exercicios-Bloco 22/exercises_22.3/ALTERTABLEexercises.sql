-- Exercício1
ALTER TABLE locations CHANGE COLUMN street_address address VARCHAR(40);

-- Exercício2
ALTER TABLE locations CHANGE COLUMN region_name region VARCHAR(25);

-- Exercício3
ALTER TABLE locations CHANGE COLUMN country_name country VARCHAR(40);
