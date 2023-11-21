-- SQLite
-- Join

-- Buscar o email dos players que criaram um hero da classe Wizard

SELECT Players.email, Players.name AS username, Heroes.name AS heroName, Heroes.heroClassName AS class
FROM Players
JOIN Heroes
ON Players.id = Heroes.player_id
WHERE Heroes.heroClassName = 'Wizard';