### Table: Product

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |
| unit_price   | int     |

- `product_id` is the primary key (column with unique values) of this table.
- Each row in this table indicates the name and price of each product.

---

### Table: Sales

| Column Name | Type    |
|-------------|---------|
| seller_id   | int     |
| product_id  | int     |
| buyer_id    | int     |
| sale_date   | date    |
| quantity    | int     |
| price       | int     |

- This table can have duplicate rows.
- `product_id` is a foreign key (reference column) to the `Product` table.
- Each row of this table contains information about one sale.

---

### Objective

Write a solution to report the products that were only sold in the first quarter of 2019 (i.e., between `2019-01-01` and `2019-03-31`, inclusive).  
Return the result table in any order.

---

### Example 1

#### Input:

**Product table:**

| product_id | product_name | unit_price |
|------------|--------------|------------|
| 1          | S8           | 1000       |
| 2          | G4           | 800        |
| 3          | iPhone       | 1400       |

**Sales table:**

| seller_id | product_id | buyer_id | sale_date  | quantity | price |
|-----------|------------|----------|------------|----------|-------|
| 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
| 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
| 2         | 2          | 3        | 2019-06-02 | 1        | 800   |
| 3         | 3          | 4        | 2019-05-13 | 2        | 2800  |

---

#### Output:

| product_id  | product_name |
|-------------|--------------|
| 1           | S8           |

---

#### Explanation:

- The product with `product_id = 1` was **only sold in the first quarter of 2019**.
- The product with `product_id = 2` was sold in the first quarter of 2019 but was **also sold after the first quarter**.
- The product with `product_id = 3` was **only sold after the first quarter**.

Hence, only `product_id = 1` is included in the result.
