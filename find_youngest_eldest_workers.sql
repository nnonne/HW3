SELECT 'youngest' type, name, birthday FROM worker
WHERE birthday = (SELECT MAX(birthday) FROM worker)
UNION
SELECT 'eldest' type, name, birthday FROM worker
WHERE birthday = (SELECT MIN(birthday) FROM worker);