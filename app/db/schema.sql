DROP TABLE IF EXISTS flora_fauna;
DROP TABLE IF EXISTS creatures;
DROP TABLE IF EXISTS user;
DROP VIEW IF EXISTS creature_bugs;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE creatures (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT UNIQUE NOT NULL,
    type TEXT
);

CREATE TABLE flora_fauna (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    plant_id     INTEGER,
    bug_id       INTEGER
);

CREATE VIEW creature_bugs
AS
SELECT
  p.id   AS 'plant_id',
  p.name AS 'plant',
  b.id   AS 'bug_id',
  b.name AS 'bug',
  b.type AS 'kind'
FROM
  creatures p,
  creatures b,
  flora_fauna f
WHERE
  p.id = f.plant_id AND
  b.id = f.bug_id
ORDER BY
  plant;