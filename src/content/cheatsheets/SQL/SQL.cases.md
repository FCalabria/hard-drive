---
title: "Cases"
weight: 5
---

A bit like a switch statement, but to create new columns on the results. Example:

```sql
SELECT type, heart_rate,
    CASE
        WHEN heart_rate > 220-30 THEN "above max"
        WHEN heart_rate > ROUND(0.90 * (220-30)) THEN "above target"
        WHEN heart_rate > ROUND(0.50 * (220-30)) THEN "within target"
        ELSE "below target"
    END as "hr_zone"
FROM exercise_logs;
```

Will show something like:

| type | heart_rate | hr_zone |
| ---- | ---- | ---- |
| biking | 110 | within target |
| biking | 105 | within target |
| dancing | 120 | within target |
| climbing | 90 | below target |
