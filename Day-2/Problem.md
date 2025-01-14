# Cancellation Rate Calculation

## Tables

### Trips Table

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| client_id   | int     |
| driver_id   | int     |
| city_id     | int     |
| status      | enum    |
| request_at  | varchar |

- `id` is the primary key for this table.
- The table holds all taxi trips. 
- Each trip has a unique `id`, while `client_id` and `driver_id` are foreign keys to the `users_id` in the **Users** table.
- `status` is an ENUM type with values: `('completed', 'cancelled_by_driver', 'cancelled_by_client')`.

### Users Table

| Column Name | Type    |
|-------------|---------|
| users_id    | int     |
| banned      | enum    |
| role        | enum    |

- `users_id` is the primary key for this table.
- The table holds all users. 
- Each user has a unique `users_id`.
- `role` is an ENUM type with values: `('client', 'driver', 'partner')`.
- `banned` is an ENUM type with values: `('Yes', 'No')`.

---

## Problem Description

The **cancellation rate** is computed by dividing the number of canceled (by client or driver) requests with unbanned users by the total number of requests with unbanned users on a specific day. 

- Round the **cancellation rate** to two decimal points.
- Return results for days between `"2013-10-01"` and `"2013-10-03"`.

### Example Input

#### Trips Table

| id | client_id | driver_id | city_id | status              | request_at  |
|----|-----------|-----------|---------|---------------------|-------------|
| 1  | 1         | 10        | 1       | completed           | 2013-10-01  |
| 2  | 2         | 11        | 1       | cancelled_by_driver | 2013-10-01  |
| 3  | 3         | 12        | 6       | completed           | 2013-10-01  |
| 4  | 4         | 13        | 6       | cancelled_by_client | 2013-10-01  |
| 5  | 1         | 10        | 1       | completed           | 2013-10-02  |
| 6  | 2         | 11        | 6       | completed           | 2013-10-02  |
| 7  | 3         | 12        | 6       | completed           | 2013-10-02  |
| 8  | 2         | 12        | 12      | completed           | 2013-10-03  |
| 9  | 3         | 10        | 12      | completed           | 2013-10-03  |
| 10 | 4         | 13        | 12      | cancelled_by_driver | 2013-10-03  |

#### Users Table

| users_id | banned | role   |
|----------|--------|--------|
| 1        | No     | client |
| 2        | Yes    | client |
| 3        | No     | client |
| 4        | No     | client |
| 10       | No     | driver |
| 11       | No     | driver |
| 12       | No     | driver |
| 13       | No     | driver |

### Example Output

| Day        | Cancellation Rate |
|------------|-------------------|
| 2013-10-01 | 0.33              |
| 2013-10-02 | 0.00              |
| 2013-10-03 | 0.50              |

---

## Explanation

1. **2013-10-01**:
   - Total requests: 4.
   - Excluding banned users: 3.
   - Canceled requests: 1.
   - Cancellation Rate = \( \frac{1}{3} = 0.33 \).

2. **2013-10-02**:
   - Total requests: 3.
   - Excluding banned users: 2.
   - Canceled requests: 0.
   - Cancellation Rate = \( \frac{0}{2} = 0.00 \).

3. **2013-10-03**:
   - Total requests: 3.
   - Excluding banned users: 2.
   - Canceled requests: 1.
   - Cancellation Rate = \( \frac{1}{2} = 0.50 \).

---