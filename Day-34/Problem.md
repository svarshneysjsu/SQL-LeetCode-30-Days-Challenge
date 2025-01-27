## Table: Employees

| Column Name | Type |
|-------------|------|
| emp_id      | int  |
| event_day   | date |
| in_time     | int  |
| out_time    | int  |

- `(emp_id, event_day, in_time)` is the primary key (unique combination of columns) for this table.
- The table records employees' entry (`in_time`) and exit (`out_time`) times in an office for a specific day (`event_day`).
- **Constraints**:
  - `in_time` and `out_time` are measured in minutes and are between `1` and `1440`.
  - For each event, `in_time < out_time`.
  - No two events on the same day intersect in time.

---

### Problem Statement

Write a solution to calculate the **total time (in minutes)** spent by each employee on each day in the office. 
- If an employee has multiple entries and exits on the same day, sum up the total time for all such events.

Return the result table in any order.

---

### Example 1

#### Input:
**Employees table:**

| emp_id | event_day  | in_time | out_time |
|--------|------------|---------|----------|
| 1      | 2020-11-28 | 4       | 32       |
| 1      | 2020-11-28 | 55      | 200      |
| 1      | 2020-12-03 | 1       | 42       |
| 2      | 2020-11-28 | 3       | 33       |
| 2      | 2020-12-09 | 47      | 74       |

#### Output:
| day        | emp_id | total_time |
|------------|--------|------------|
| 2020-11-28 | 1      | 173        |
| 2020-11-28 | 2      | 30         |
| 2020-12-03 | 1      | 41         |
| 2020-12-09 | 2      | 27         |

---

### Explanation:
1. **Employee 1**:
   - On `2020-11-28`:
     - Event 1: `(32 - 4) = 28 minutes`
     - Event 2: `(200 - 55) = 145 minutes`
     - Total: `28 + 145 = 173 minutes`
   - On `2020-12-03`:
     - Event 1: `(42 - 1) = 41 minutes`
     - Total: `41 minutes`

2. **Employee 2**:
   - On `2020-11-28`:
     - Event 1: `(33 - 3) = 30 minutes`
     - Total: `30 minutes`
   - On `2020-12-09`:
     - Event 1: `(74 - 47) = 27 minutes`
     - Total: `27 minutes`

---

