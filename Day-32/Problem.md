## Table: SalesPerson

| Column Name     | Type    |
|------------------|---------|
| sales_id         | int     |
| name             | varchar |
| salary           | int     |
| commission_rate  | int     |
| hire_date        | date    |

- `sales_id` is the primary key (unique for each salesperson).
- Each row represents a salesperson's ID, name, salary, commission rate, and hire date.

---

## Table: Company

| Column Name | Type    |
|-------------|---------|ß
| com_id      | int     |
| name        | varchar |
| city        | varchar |

- `com_id` is the primary key (unique for each company).
- Each row represents a company's ID, name, and the city it is located in.

---

## Table: Orders

| Column Name | Type |
|-------------|------|
| order_id    | int  |
| order_date  | date |
| com_id      | int  |
| sales_id    | int  |
| amount      | int  |

- `order_id` is the primary key (unique for each order).
- `com_id` is a foreign key referencing the `com_id` column in the `Company` table.
- `sales_id` is a foreign key referencing the `sales_id` column in the `SalesPerson` table.
- Each row represents an order's details, including the associated company, salesperson, date, and order amount.

---

### Problem Statement

Write a solution to find the names of all salespersons who **did not have any orders** related to the company with the name `"RED"`.

Return the result table in any order.

---

### Example 1

#### Input:
**SalesPerson table:**

| sales_id | name | salary | commission_rate | hire_date  |
|----------|------|--------|-----------------|------------|
| 1        | John | 100000 | 6               | 4/1/2006   |
| 2        | Amy  | 12000  | 5               | 5/1/2010   |
| 3        | Mark | 65000  | 12              | 12/25/2008 |
| 4        | Pam  | 25000  | 25              | 1/1/2005   |
| 5        | Alex | 5000   | 10              | 2/3/2007   |

**Company table:**

| com_id | name   | city     |
|--------|--------|----------|
| 1      | RED    | Boston   |
| 2      | ORANGE | New York |
| 3      | YELLOW | Boston   |
| 4      | GREEN  | Austin   |

**Orders table:**

| order_id | order_date | com_id | sales_id | amount |
|----------|------------|--------|----------|--------|
| 1        | 1/1/2014   | 3      | 4        | 10000  |
| 2        | 2/1/2014   | 4      | 5        | 5000   |
| 3        | 3/1/2014   | 1      | 1        | 50000  |
| 4        | 4/1/2014   | 1      | 4        | 25000  |

#### Output:
| name |
|------|
| Amy  |
| Mark |
| Alex |

---

### Explanation:
- **Orders 3 and 4** are linked to the company `"RED"` (`com_id = 1`), handled by salespersons `John` and `Pam`.
- The remaining salespersons (`Amy`, `Mark`, `Alex`) have no orders associated with `"RED"`, so they are included in the output.

