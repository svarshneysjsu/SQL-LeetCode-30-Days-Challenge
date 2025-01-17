## Table: Products

| Column Name | Type |
|-------------|------|
| product_id  | int  |
| store1      | int  |
| store2      | int  |
| store3      | int  |

- **product_id** is the primary key (column with unique values) for this table.
- Each row in this table indicates the product's price in three different stores: `store1`, `store2`, and `store3`.
- If the product is not available in a store, the price will be `null` in that store's column.

---

### Problem Description
Rearrange the `Products` table so that each row has the following format:
- `product_id`
- `store` (store name as a string)
- `price`

- Exclude any rows where the product is not available in a store (i.e., `price` is `null`).

### Result Table
The result should have the following format:

| Column Name | Type |
|-------------|------|
| product_id  | int  |
| store       | varchar |
| price       | int  |

---

### Example

#### Input: 
**Products table:**

| product_id | store1 | store2 | store3 |
|------------|--------|--------|--------|
| 0          | 95     | 100    | 105    |
| 1          | 70     | null   | 80     |

#### Output: 
| product_id | store  | price |
|------------|--------|-------|
| 0          | store1 | 95    |
| 0          | store2 | 100   |
| 0          | store3 | 105   |
| 1          | store1 | 70    |
| 1          | store3 | 80    |

---

#### Explanation:
1. **Product 0**:
   - Available in `store1` with price `95`.
   - Available in `store2` with price `100`.
   - Available in `store3` with price `105`.
2. **Product 1**:
   - Available in `store1` with price `70`.
   - Not available in `store2` (price is `null`).
   - Available in `store3` with price `80`.
