-- Write your PostgreSQL query statement below
Select
    c.name as Customers
FROM Customers AS c
         LEFT JOIN Orders AS o ON c.id = o.customerId
WHERE o.id IS NULL;