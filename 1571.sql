SELECT w.name AS warehouse_name, SUM(p.Width * p.Length * p.Height * w.units) AS volume FROM warehouse AS w INNER JOIN products AS p ON w.product_id = p.product_id GROUP BY w.name;
