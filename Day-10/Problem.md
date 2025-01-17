## Table: Person

| Column Name | Type    |
|-------------|---------|
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |

- **personId** is the primary key (column with unique values) for this table.
- This table contains information about the ID of some persons, along with their first and last names.

---

## Table: Address

| Column Name | Type    |
|-------------|---------|
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |

- **addressId** is the primary key (column with unique values) for this table.
- Each row contains information about the `city` and `state` of one person with `personId`.

---

### Problem Description
Write a solution to report the following information for each person in the `Person` table:
- `firstName`
- `lastName`
- `city`
- `state`

If a person's `personId` is not present in the `Address` table, return `null` for their `city` and `state`.

### Result Table
The result should have the following format:

| Column Name | Type    |
|-------------|---------|
| firstName   | varchar |
| lastName    | varchar |
| city        | varchar |
| state       | varchar |

---

### Example

#### Input: 
**Person table:**

| personId | lastName | firstName |
|----------|----------|-----------|
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |

**Address table:**

| addressId | personId | city          | state      |
|-----------|----------|---------------|------------|
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |

#### Output: 
| firstName | lastName | city          | state    |
|-----------|----------|---------------|----------|
| Allen     | Wang     | Null          | Null     |
| Bob       | Alice    | New York City | New York |

---

#### Explanation:
1. **Person ID = 1**:
   - No corresponding entry in the `Address` table.
   - `city` and `state` are `null`.

2. **Person ID = 2**:
   - Corresponding address is found in `Address` table with `city = New York City` and `state = New York`.
