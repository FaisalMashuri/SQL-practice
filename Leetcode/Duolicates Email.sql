-- Write your PostgreSQL query statement below
WITH disticntEmail AS(
    SELECT
        email,
        COUNT(email) as email_count
    FROM Person
    GROUP BY email
)

select email as Email from disticntEmail where email_count >1;