SELECT e.employee_id, (SELECT COUNT(team_id) FROM employee WHERE team_id = e.team_id) AS team_size FROM employee AS e;
