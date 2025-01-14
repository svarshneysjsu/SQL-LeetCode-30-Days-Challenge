# Distance Traveled by Each User

## Tables

### Users Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the column with unique values for this table.
- `name` is the name of the user.

### Rides Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| user_id     | int     |
| distance    | int     |

- `id` is the column with unique values for this table.
- `user_id` is the `id` of the user who traveled the distance recorded in the `distance` column.

---

## Problem Description

Write a solution to report the total distance traveled by each user.  
The result should be:
1. Ordered by `travelled_distance` in descending order.
2. If two or more users traveled the same distance, order them by their `name` in ascending order.

---

## Example Input

### Users Table

| id   | name      |
|------|-----------|
| 1    | Alice     |
| 2    | Bob       |
| 3    | Alex      |
| 4    | Donald    |
| 7    | Lee       |
| 13   | Jonathan  |
| 19   | Elvis     |

### Rides Table

| id   | user_id  | distance |
|------|----------|----------|
| 1    | 1        | 120      |
| 2    | 2        | 317      |
| 3    | 3        | 222      |
| 4    | 7        | 100      |
| 5    | 13       | 312      |
| 6    | 19       | 50       |
| 7    | 7        | 120      |
| 8    | 19       | 400      |
| 9    | 7        | 230      |

---

## Example Output

| name     | travelled_distance |
|----------|--------------------|
| Elvis    | 450                |
| Lee      | 450                |
| Bob      | 317                |
| Jonathan | 312                |
| Alex     | 222                |
| Alice    | 120                |
| Donald   | 0                  |

---

## Explanation

1. **Elvis** and **Lee** both traveled 450 miles. Since Elvis' name is alphabetically smaller than Lee's, Elvis appears first.
2. Other users like Bob, Jonathan, Alex, and Alice only have one ride, and their total distances are directly taken from the `distance` column.
3. **Donald** did not have any rides, so his `travelled_distance` is `0`.

---