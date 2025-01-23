### Table: Person

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key (column with unique values) for this table.  
- Each row of this table contains an email. The emails will not contain uppercase letters.  
- Note that the `email` field is guaranteed not to be NULL.  

---

### Problem Statement:
Write a SQL query to report all duplicate emails in the `Person` table.

Return the result table in any order.

---

### Example:

#### Input:
**Person table:**

| id | email   |
|----|---------|
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |

#### Output:
| Email   |
|---------|
| a@b.com |

#### Explanation:
- The email `a@b.com` is repeated two times.

---