## Table: Logs

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| num         | varchar |

- `id` is the primary key for this table.
- `id` is an auto-increment column starting from 1.

---

### Problem
Find all numbers (`num`) that appear at least **three times consecutively** in the `Logs` table.

---

### Example

**Input:**  
Logs table:

| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

**Output:**  

| ConsecutiveNums |
|-----------------|
| 1               |

**Explanation:**  
The number `1` appears consecutively for at least three times (at `id` 1, 2, 3). No other number meets this condition.

---