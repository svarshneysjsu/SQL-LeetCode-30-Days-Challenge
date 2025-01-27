```markdown
## Table: Courses

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- `(student, class)` is the primary key, meaning each combination of student and class is unique.
- Each row in the table represents the enrollment of a student in a specific class.

---

### Problem Statement

Write a solution to find all the `class` values that have at least **five students**.

Return the result table in any order.

---

### Example 1

#### Input:
**Courses table:**

| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

#### Output:
| class   |
|---------|
| Math    |

#### Explanation:
- **Math** has 6 students, so it is included in the result.
- **English**, **Biology**, and **Computer** each have only 1 student, so they are not included in the result.
```