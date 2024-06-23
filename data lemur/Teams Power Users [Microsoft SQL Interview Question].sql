SELECT
    sender_id,
    COUNT(*) as message_count
FROM messages
WHERE EXTRACT(YEAR FROM sent_date) = '2022'
  AND EXTRACT(MONTH FROM sent_date) = '8'
GROUP BY sender_id
ORDER BY 2 DESC
    limit 2;