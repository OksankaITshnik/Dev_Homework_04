SELECT client.name AS client_name, COUNT(project.id) AS project_count
FROM client 
INNER JOIN project
ON client.id = project.client_id
GROUP BY client_name
HAVING COUNT(project.id) = (
	SELECT COUNT(id)
    FROM project
    GROUP BY client_id
    LIMIT 1
);