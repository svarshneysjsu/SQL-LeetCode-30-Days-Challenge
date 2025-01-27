
## Table: World

| Column Name | Type    |
|-------------|---------|
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

- `name` is the primary key (unique for each row) in this table.
- Each row contains information about:
  - The name of a country.
  - The continent it belongs to.
  - Its area (in km²), population, and GDP value.

---

### Problem Statement

A country is considered **big** if:
1. It has an area of **at least 3 million km²** (i.e., `area >= 3000000`), OR
2. It has a population of **at least 25 million** (i.e., `population >= 25000000`).

Write a solution to find the `name`, `population`, and `area` of the big countries.

Return the result table in any order.

---

### Example 1

#### Input:
**World table:**

| name        | continent | area    | population | gdp          |
|-------------|-----------|---------|------------|--------------|
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |

#### Output:
| name        | population | area    |
|-------------|------------|---------|
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |

#### Explanation:
- **Afghanistan** qualifies as a big country because its population is 25,500,100, which is greater than 25 million.
- **Algeria** qualifies as a big country because its population is 37,100,000 (greater than 25 million) and its area is 2,381,741 km².
