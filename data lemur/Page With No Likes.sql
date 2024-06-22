SELECT p.page_id FROM pages AS p
WHERE NOT EXISTS (
    SELECT pl.page_id FROM page_likes AS pl
    WHERE pl.page_id = p.page_id
);