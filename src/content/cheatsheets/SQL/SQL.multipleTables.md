---
title: "Multiple tables"
weight: 2
---

- `SELECT * FROM table1, table2 WHERE table1.colname = table2.colname;` search data from two tables (not ideal way)
- `SELECT * FROM table1 INNER JOIN table2 ON table1.colname = table2.colname;` search data joining two tables (inner is optional)
- `SELECT * FROM table1 a JOIN table2 b ON a.colname = b.colname;` alias for he table names (keep sentence short)

### Join types:

- INNER: shows only data present in both tables. Default mode
- LEFT: shows all registries from the first table even in they don't match any item from the second table
- RIGHT: shows all registries from the second table even in they don't match any item from the first table. Not supported on sqlite
- OUTER: shows only data with no matches in the tables. Not supported on sqlite

Tables can be joined with themselves to cross data, specifing aliases:

```sql
SELECT students.first_name, students.last_name, buddies.email
    FROM students
    JOIN students buddies
    ON students.buddy_id = buddies.id;
```