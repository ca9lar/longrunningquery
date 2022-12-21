-- Set the threshold for long-running queries (in seconds)
SET @threshold = 10;

-- Get the list of currently executing queries
SELECT * FROM information_schema.processlist WHERE time > @threshold;

-- Get the query plan for each long-running query
SELECT
    p.id,
    p.user,
    p.host,
    p.db,
    p.command,
    p.time,
    p.state,
    p.info,
    EXPLAIN SELECT * FROM p.db.p.command WHERE id = p.id
FROM
    information_schema.processlist p
WHERE
    p.time > @threshold;

-- Get the server status variables that may be affecting query performance
SHOW GLOBAL STATUS;
