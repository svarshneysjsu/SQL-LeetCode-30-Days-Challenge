## Table: Weather

| Column Name   | Type    |
|---------------|---------|
| id            | int     |
| recordDate    | date    |
| temperature   | int     |

- `id` is the column with unique values for this table.
- There are no duplicate rows with the same `recordDate`.
- This table contains information about the temperature on a certain day.

---

### Problem Statement

Write a solution to find all `id` values of dates where the temperature was higher compared to the previous day's temperature (yesterday).

Return the result table in any order.

The result format is shown in the following example.

---

### Example 1

#### Input:
**Weather table:**

| id | recordDate | temperature |
|----|------------|-------------|
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |

#### Output:
| id |
|----|
| 2  |
| 4  |

#### Explanation:
- On **2015-01-02**, the temperature was higher than the previous day (10 → 25).
- On **2015-01-04**, the temperature was higher than the previous day (20 → 30).
