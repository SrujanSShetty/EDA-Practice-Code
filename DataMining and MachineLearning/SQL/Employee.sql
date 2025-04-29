-- Create and populate a sales database
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    sale_date DATE,
    amount DECIMAL(10, 2),
    product_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Insert sample data into employees
INSERT INTO employees VALUES
(1, 'John Smith', 'Sales', 50000.00, '2020-01-15'),
(2, 'Mary Johnson', 'Sales', 55000.00, '2019-05-22'),
(3, 'Robert Brown', 'Marketing', 48000.00, '2021-03-10'),
(4, 'Patricia Davis', 'Marketing', 51000.00, '2020-08-05'),
(5, 'Michael Miller', 'IT', 65000.00, '2018-11-20'),
(6, 'Jennifer Wilson', 'IT', 67000.00, '2019-02-14'),
(7, 'David Moore', 'Sales', 52000.00, '2021-07-30'),
(8, 'Linda Taylor', 'HR', 49000.00, '2020-04-18'),
(9, 'James Anderson', 'Finance', 62000.00, '2019-10-02'),
(10, 'Elizabeth Thomas', 'Finance', 60000.00, '2020-06-25');

-- Insert sample data into products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 1200.00),
(102, 'Smartphone', 'Electronics', 800.00),
(103, 'Desk Chair', 'Furniture', 300.00),
(104, 'Office Desk', 'Furniture', 450.00),
(105, 'Printer', 'Electronics', 250.00),
(106, 'Headphones', 'Electronics', 180.00),
(107, 'Filing Cabinet', 'Furniture', 120.00),
(108, 'Tablet', 'Electronics', 600.00),
(109, 'Whiteboard', 'Office Supplies', 85.00),
(110, 'Notebook Set', 'Office Supplies', 25.00);

-- Insert sample data into sales
INSERT INTO sales VALUES
(1001, 1, '2023-01-05', 1200.00, 101),
(1002, 2, '2023-01-08', 800.00, 102),
(1003, 1, '2023-01-12', 300.00, 103),
(1004, 7, '2023-01-15', 1200.00, 101),
(1005, 2, '2023-01-20', 250.00, 105),
(1006, 7, '2023-01-22', 450.00, 104),
(1007, 1, '2023-01-25', 800.00, 102),
(1008, 2, '2023-02-01', 600.00, 108),
(1009, 7, '2023-02-05', 180.00, 106),
(1010, 1, '2023-02-10', 1200.00, 101),
(1011, 7, '2023-02-15', 800.00, 102),
(1012, 2, '2023-02-20', 300.00, 103),
(1013, 1, '2023-02-25', 250.00, 105),
(1014, 7, '2023-03-01', 450.00, 104),
(1015, 2, '2023-03-05', 180.00, 106),
(1016, 1, '2023-03-10', 600.00, 108),
(1017, 7, '2023-03-15', 85.00, 109),
(1018, 2, '2023-03-20', 1200.00, 101),
(1019, 1, '2023-03-25', 25.00, 110),
(1020, 7, '2023-03-30', 800.00, 102);