# Fix User Names

## Table Description

### Users Table

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key for this table.
- `name` consists of only lowercase and uppercase characters.

---

## Problem Description

Fix the `name` column so that:
1. Only the first character is uppercase.
2. All other characters are lowercase.

Return the result table ordered by `user_id`.

---

## Example Input

### Users Table

| user_id | name  |
|---------|-------|
| 1       | aLice |
| 2       | bOB   |

---

## Example Output

| user_id | name  |
|---------|-------|
| 1       | Alice |
| 2       | Bob   |

---

## Explanation

- The name "aLice" is converted to "Alice".
- The name "bOB" is converted to "Bob".
- The result is ordered by `user_id`.

---