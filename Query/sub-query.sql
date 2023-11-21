-- SQLite
-- Sub query

-- Buscar todos os heróis da plataforma XBOX

-- SELECT id, platform FROM "Players" WHERE platform = 'XBOX';

-- SELECT * FROM "Heroes" WHERE player_id = 2 OR player_id = 4;
-- SELECT * FROM "Heroes" WHERE player_id IN (2,4);

SELECT id,name,level,heroClassName,player_id FROM "Heroes" WHERE player_id IN (
    SELECT id FROM "Players" WHERE platform = 'XBOX'
);