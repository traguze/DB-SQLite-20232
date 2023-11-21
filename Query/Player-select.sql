-- SQLite
-- SELECT Players

-- SELECT * FROM "Players";

-- SELECT email FROM "Players";

-- SELECT platform, email FROM "Players";

-- SELECT platform, name, email FROM "Players"
-- WHERE platform = 'PSN';

-- SELECT name, email, points FROM "Players"
-- WHERE platform = 'XBOX'
-- ORDER BY name DESC;

-- SELECT name, platform, points FROM "Players"
-- ORDER BY points DESC
-- LIMIT 1 OFFSET 0;

-- SELECT COUNT(id) AS "Total" FROM "Players";

SELECT platform, COUNT(*) AS "Total" FROM "Players"
GROUP BY platform;