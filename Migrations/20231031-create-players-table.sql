-- SQLite

DROP TABLE IF EXISTS "Players";

CREATE TABLE IF NOT EXISTS "Players" (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  points int DEFAULT 0,
  platform VARCHAR(4) NOT NULL CHECK ( platform IN ('PSN', 'XBOX', 'PC')),
  country VARCHAR(120) NOT NULL
);
