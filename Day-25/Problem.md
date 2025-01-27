## Table: Orders

| Column Name     | Type |
|------------------|------|
| order_number     | int  |
| customer_number  | int  |

- `order_number` is the primary key, ensuring unique order IDs.
- This table contains information about orders and the corresponding customer IDs.

---

### Problem Statement

Write a solution to find the `customer_number` of the customer who has placed the **largest number of orders**.

- The test cases are designed so that exactly **one customer** will always have the most orders.

---

### Example 1

#### Input:
**Orders table:**

| order_number | customer_number |
|--------------|-----------------|
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |

#### Output:
| customer_number |
|-----------------|
| 3               |

#### Explanation:
- Customer `3` has placed **two orders**, which is more than customers `1` and `2`, who have each placed only **one order**.
- Therefore, the result is `customer_number = 3`.

---

### Follow-Up Question

**What if more than one customer has the largest number of orders?**
- Modify your solution to return **all `customer_number` values** in this case.
- The result should include all customers with the maximum order count.
