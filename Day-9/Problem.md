## Table: DailySales

| Column Name | Type    |
|-------------|---------|
| date_id     | date    |
| make_name   | varchar |
| lead_id     | int     |
| partner_id  | int     |

- **Note:** There is no primary key (column with unique values) for this table. It may contain duplicates.
- This table contains the `date` and the `name` of the product sold, along with the IDs of the `lead` and `partner` it was sold to.
- The `make_name` consists of only lowercase English letters.

---

### Problem Description
For each `date_id` and `make_name`, find:
1. The number of distinct `lead_id` values.
2. The number of distinct `partner_id` values.

### Result Table
Return the result in the following format:

| Column Name      | Type |
|-------------------|------|
| date_id          | date |
| make_name        | varchar |
| unique_leads     | int  |
| unique_partners  | int  |

---

### Example

#### Input: 
**DailySales table:**

| date_id   | make_name | lead_id | partner_id |
|-----------|-----------|---------|------------|
| 2020-12-8 | toyota    | 0       | 1          |
| 2020-12-8 | toyota    | 1       | 0          |
| 2020-12-8 | toyota    | 1       | 2          |
| 2020-12-7 | toyota    | 0       | 2          |
| 2020-12-7 | toyota    | 0       | 1          |
| 2020-12-8 | honda     | 1       | 2          |
| 2020-12-8 | honda     | 2       | 1          |
| 2020-12-7 | honda     | 0       | 1          |
| 2020-12-7 | honda     | 1       | 2          |
| 2020-12-7 | honda     | 2       | 1          |

#### Output: 
| date_id   | make_name | unique_leads | unique_partners |
|-----------|-----------|--------------|-----------------|
| 2020-12-8 | toyota    | 2            | 3               |
| 2020-12-7 | toyota    | 1            | 2               |
| 2020-12-8 | honda     | 2            | 2               |
| 2020-12-7 | honda     | 3            | 2               |

---

#### Explanation:
1. **For 2020-12-8:**
   - `toyota`: `leads = [0, 1]`, `partners = [0, 1, 2]`
   - `honda`: `leads = [1, 2]`, `partners = [1, 2]`
2. **For 2020-12-7:**
   - `toyota`: `leads = [0]`, `partners = [1, 2]`
   - `honda`: `leads = [0, 1, 2]`, `partners = [1, 2]`
