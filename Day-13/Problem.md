## Table: Scores

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| score       | decimal |

- `id` is the primary key (column with unique values) for this table.  
- Each row of this table contains the score of a game.  
- `score` is a floating-point value with two decimal places.

---

### Problem
Write a solution to calculate the rank of the scores based on the following rules:
1. Scores should be ranked from **highest to lowest**.
2. If there is a **tie** between two scores, both should have the **same rank**.
3. After a tie, the next rank should be the **next consecutive integer** (no gaps in ranking).
4. Return the result table ordered by `score` in **descending order**.

---

### Example 1

**Input:**  
Scores table:

| id | score |
|----|-------|
| 1  | 3.50  |
| 2  | 3.65  |
| 3  | 4.00  |
| 4  | 3.85  |
| 5  | 4.00  |
| 6  | 3.65  |

**Output:**  

| score | rank |
|-------|------|
| 4.00  | 1    |
| 4.00  | 1    |
| 3.85  | 2    |
| 3.65  | 3    |
| 3.65  | 3    |
| 3.50  | 4    |

---