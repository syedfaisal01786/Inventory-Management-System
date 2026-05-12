CREATE TABLE inventory (
    product_id NUMBER,
    product_name VARCHAR2(50),
    stock_quantity NUMBER,
    sold_quantity NUMBER,
    remaining_stock NUMBER
);

INSERT INTO inventory VALUES (101, 'Laptop', 50, 20, 30);

INSERT INTO inventory VALUES (102, 'Mouse', 100, 60, 40);

INSERT INTO inventory VALUES (103, 'Keyboard', 80, 25, 55);

INSERT INTO inventory VALUES (104, 'Monitor', 40, 15, 25);

INSERT INTO inventory VALUES (105, 'Printer', 30, 10, 20);

-- Display all products
SELECT * FROM inventory;

-- Find low stock products
SELECT product_name, remaining_stock
FROM inventory
WHERE remaining_stock < 30;

-- Find highest selling products
SELECT product_name, sold_quantity
FROM inventory
ORDER BY sold_quantity DESC;

-- Total stock available
SELECT SUM(stock_quantity) AS total_stock
FROM inventory;
