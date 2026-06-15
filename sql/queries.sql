-- Finn varer uten pris
SELECT *
FROM products
WHERE price IS NULL;

-- Finn duplikater
SELECT product_name, COUNT(*)
FROM products
GROUP BY product_name
HAVING COUNT(*) > 1;

-- Finn manglende kategori
SELECT *
FROM products
WHERE category IS NULL;
