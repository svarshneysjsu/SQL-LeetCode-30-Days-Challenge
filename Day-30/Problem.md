## Table: Activities

| Column Name | Type    |
|-------------|---------|
| sell_date   | date    |
| product     | varchar |

- This table **does not have a primary key**, so it may contain duplicate rows.
- Each row represents the `product` name and the `sell_date` indicating when it was sold in a market.

---

### Problem Statement

Write a solution to find, for each `sell_date`:
1. The number of **distinct products** sold (`num_sold`).
2. A comma-separated, lexicographically sorted list of product names (`products`).

The result should:
- Be ordered by `sell_date` in ascending order.

---

### Example 1

#### Input:
**Activities table:**

| sell_date  | product     |
|------------|-------------|
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |

#### Output:
| sell_date  | num_sold | products                     |
|------------|----------|------------------------------|
| 2020-05-30 | 3        | Basketball,Headphone,T-Shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

#### Explanation:
- **For `2020-05-30`**:
  - Distinct products sold: `Headphone`, `Basketball`, `T-Shirt`.
  - Lexicographically sorted: `Basketball,Headphone,T-Shirt`.

- **For `2020-06-01`**:
  - Distinct products sold: `Pencil`, `Bible`.
  - Lexicographically sorted: `Bible,Pencil`.

- **For `2020-06-02`**:
  - Distinct product sold: `Mask`.
  - Sorted result: `Mask` (only one product).
