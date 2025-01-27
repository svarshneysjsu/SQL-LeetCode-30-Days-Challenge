## Table: Followers

| Column Name | Type |
|-------------|------|
| user_id     | int  |
| follower_id | int  |

- `(user_id, follower_id)` is the primary key, ensuring unique combinations of user and follower IDs.
- This table represents a social media app where a follower (`follower_id`) follows a user (`user_id`).

---

### Problem Statement

Write a solution that returns the number of followers for each user. The result table should include:
- The `user_id`.
- The `followers_count` (number of followers each user has).

The output should be ordered by `user_id` in ascending order.

---

### Example 1

#### Input:
**Followers table:**

| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

#### Output:
| user_id | followers_count |
|---------|-----------------|
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

#### Explanation:
- User `0` has 1 follower: `{1}`.
- User `1` has 1 follower: `{0}`.
- User `2` has 2 followers: `{0, 1}`.
