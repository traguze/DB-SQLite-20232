-- SQLite

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS "Heroes";

CREATE TABLE IF NOT EXISTS "Heroes" (
    id  INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(120) NOT NULL,
    level INT DEFAULT 1,
    heroClassIndex INT,
    heroClassName VARCHAR(15) CHECK ( heroClassName IN ('Barbarian','Crusader','Demon Hunter','Monk','Necromancer','Witch Doctor','Wizard')),
    gold INT DEFAULT 0,
    player_id INTEGER NOT NULL,
    FOREIGN KEY (player_id) REFERENCES Players(id)
);
