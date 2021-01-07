---
title: "Subqueries"
weight: 4
---

They are done with parenthesis, and allow to perform complex searchs. Example:

```sql
SELECT name, year FROM friends WHERE year = (SELECT year FROM friends GROUP BY year ORDER BY count(*) DESC LIMIT 1);
```

If the subquery returns more than one value, use `IN` instead of `=`. Example:

```sql
SELECT name FROM friends WHERE citycode IN (SELECT code FROM cities WHERE name LIKE "C%");
```


{{% notice tip %}}
First do a query with the subquery (the part in parenthesis) to check that it is valid and returns what you want
{{% /notice %}}