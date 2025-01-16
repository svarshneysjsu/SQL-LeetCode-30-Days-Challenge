### Table: Products

| Column Name | Type    |
|-------------|---------|
| product_id  | int     |
| store1      | int     |
| store2      | int     |
| store3      | int     |

- **product_id** is the primary key (column with unique values) for this table.
- Each row in this table indicates the product's price in 3 different stores: `store1`, `store2`, and `store3`.
- If the product is not available in a store, the price will be `NULL` in that store's column.

---

### Problem Statement

Write a solution to rearrange the `Products` table so that each row has the format `(product_id, store, price)`. 

- If a product is not available in a store (i.e., the price is `NULL`), do not include a row with that `product_id` and `store` combination in the result table.
- Return the result table in any order.

---

### Example

#### Input:

**Products Table**:

| product_id | store1 | store2 | store3 |
|------------|--------|--------|--------|
| 0          | 95     | 100    | 105    |
| 1          | 70     | null   | 80     |

#### Output:

**Result Table**:

| product_id | store  | price |
|------------|--------|-------|
| 0          | store1 | 95    |
| 0          | store2 | 100   |
| 0          | store3 | 105   |
| 1          | store1 | 70    |
| 1          | store3 | 80    |

---

### Explanation:

- **Product 0**:
  - Available in all three stores: 
    - `store1` with price `95`
    - `store2` with price `100`
    - `store3` with price `105`

- **Product 1**:
  - Available in `store1` with price `70`
  - Available in `store3` with price `80`
  - Not available in `store2` (price is `NULL`), so no row for `store2`.
