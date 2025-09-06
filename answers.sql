-- Question 1: Get employee details and their office code using INNER JOIN.
-- An INNER JOIN ensures we only get employees who are assigned to a valid office.
SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM
    employees e
INNER JOIN
    offices o ON e.officeCode = o.officeCode;

    -- Question 2: Get product details, including their product line info, using a LEFT JOIN.
-- A LEFT JOIN ensures we get ALL products, even if their productLine has no description in the productlines table.
SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM
    products p
LEFT JOIN
    productlines pl ON p.productLine = pl.productLine;

    -- Question 3: Get order details for the first 10 orders, including customer number, using a RIGHT JOIN.
-- A RIGHT JOIN ensures we get ALL orders, even if the associated customerNumber is missing from the customers table.
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM
    customers c
RIGHT JOIN
    orders o ON c.customerNumber = o.customerNumber
LIMIT 10;

