SELECT c.candidate_id FROM candidates as c
where c.skill in ('Python', 'Tableau', 'PostgreSQL')
group by c.candidate_id
having count(DISTINCT c.skill) = 3
order by c.candidate_id ASC;