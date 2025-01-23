### Table: Customers

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (column with unique values) for this table.  
- Each row of this table indicates the ID and name of a customer.  

---

### Table: Orders

| Column Name | Type |
|-------------|------|
| id          | int  |
| customerId  | int  |

- `id` is the primary key (column with unique values) for this table.  
- `customerId` is a foreign key referencing the `id` column from the **Customers** table.  
- Each row of this table indicates the ID of an order and the ID of the customer who ordered it.  

---

### Problem Statement:
Write a SQL query to find all customers who never ordered anything.

Return the result table in any order.

---

### Example:

#### Input:
**Customers table:**

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

**Orders table:**

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

#### Output:
| Customers |
|-----------|
| Henry     |
| Max       |

---