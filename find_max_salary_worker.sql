   -- (H2 + MySQL)
SELECT name, salary
FROM worker
WHERE salary = (
   SELECT MAX(salary) FROM worker
);