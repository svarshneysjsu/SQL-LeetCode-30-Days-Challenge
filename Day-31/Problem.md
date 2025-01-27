## Table: Activity

| Column Name   | Type    |
|---------------|---------|
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |

- This table may contain duplicate rows.
- The `activity_type` column is an **ENUM** with possible values: `('open_session', 'end_session', 'scroll_down', 'send_message')`.
- The table records user activities on a social media website.
- Each `session_id` belongs to exactly one `user_id`.

---

### Problem Statement

Write a solution to find the **daily active user count** for a 30-day period ending on **2019-07-27** (inclusive). 
- A user is considered **active** on a specific day if they performed at least one activity on that day.

Return the result table in any order.

---

### Example 1

#### Input:
**Activity table:**

| user_id | session_id | activity_date | activity_type |
|---------|------------|---------------|---------------|
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

#### Output:
| day        | active_users |
|------------|--------------|
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

---

#### Explanation:
1. **2019-07-20**:
   - Users `1` and `2` were active.
   - Total active users: `2`.

2. **2019-07-21**:
   - Users `2` and `3` were active.
   - Total active users: `2`.

3. **Other days**:
   - Days with zero active users (e.g., before 2019-06-27 or where no activity occurred) are not included in the output.

---

### Notes:
- Only days within the 30-day period ending **2019-07-27** (inclusive) are considered.
- Days with zero active users are excluded from the output.
