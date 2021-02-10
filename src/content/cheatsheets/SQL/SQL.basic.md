---
title: "Basic"
weight: 1
---

- `CREATE DATABASE mydatabasename;` to create a DDBB
- `USE mydatabasename;` start working on a specific DDBB
- `CREATE TABLE mytablename (colname1 char(5), colname2 varchar(30));` to create a table with specific columns
- `ALTER TABLE mytablename ADD COLUMN colname varchar(30) DEFAULT "value for existing columns";` to add a new column to an existing table
- `ALTER TABLE mytablename RENAME colname TO newcolname;` to rename a column from an existing table
- `ALTER TABLE mytablename DROP colname;` remove a column from an existing table
- `INSERT INTO mytablename VALUES ("first column value", "second column value");` to add data to a table in the predefined order
- `INSERT INTO mytablename (colname1) VALUES ("first column value");` to add data to a table changing the order or omiting values
- `SELECT * FROM mytablename;` get all registries from a table
- `SELECT * FROM mytablename LIMIT 1;` get just the first register (combine with sorting)
- `SELECT colname3, colname4 FROM mytablename WHERE colname2 = colvalue;` get specific columns for rows that match a criteria
- `SELECT * FROM mytablename WHERE colname IS NULL;` empty values. Always use with `is`, never with `=`
- `UPDATE mytablename SET colname = newvalue, colname2 = newvalue2 WHERE colname3 = colvalue;` update specific data in a row
- `UPDATE mytablename SET colname = newvalue WHERE colname3 = colvalue LIMIT 1;` only update a specific amount of entries (safer updates)
- `SELECT DISTINCT colname1 FROM mytablename;` get only unique values
- `SELECT * FROM mytablename ORDER BY colname1, colname2;` get sorted registries. Optionally `ORDER BY colname DESC;` to change the direction
- `DELETE FROM mytablename WHERE colname = colvalue LIMIT 1` delete entries matching the criteria. [Important](https://www.youtube.com/watch?v=i_cVJgIz_Cs)
- `DROP TABLE mytablename` delete a table
- `DROP DATABASE mydatabasename` delete a DDBB


`LIKE` allows partial selectors combined with `%`. For example `SELECT * FROM mytablename WHERE colname LIKE "val%";` will select everything starting with "val"

Connectors for searchs: `AND`, `OR`, `BETWEEN`, `IN`, `NOT`

Aggregated funcs: `MAX`, `MIN`, `AVG`, `SUM`, `COUNT`. Ej: `SELECT MAX(colname), COUNT(*) from mytablename`

Functions to modify the output: `LOWER`, `UPPER`, `LENGTH`, `SUBSTR`, `REPLACE`, `TRIM`, `CONCAT`. Ej: `SELECT LENGTH(colname), LOWER(*) from mytablename`

Grouping:
- `SELECT colname1, MAX(colname2) FROM mytablename GROUP BY colname1`. Once you use grouping, you can only show the value of the grouped column or aggregated functions (over any column).
- `sqlite> SELECT colname1, COUNT(colname2) from mytablename GROUP BY colname1 HAVING COUNT(*) >= 2`. Add conditions over aggregated functions results

Export a DDBB into a file:
```sql
.open mydatabasename
.output myfile.sql
.dump
.exit
```