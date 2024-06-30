WITH jobs AS (
    SELECT
        company_id,
        title,
        description,
        COUNT(job_id) as job_count
    FROM job_listings
    GROUP BY company_id, title, description
)

SELECT
    COUNT(*) as duplicate_companies
FROM jobs
WHERE job_count > 1;