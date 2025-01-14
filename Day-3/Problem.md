# Patients with Type I Diabetes

## Table Description

### Patients Table

| Column Name  | Type    |
|--------------|---------|
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

- `patient_id` is the primary key for this table.
- `conditions` contains 0 or more condition codes separated by spaces.
- The table holds information about patients in the hospital.

---

## Problem Description

Find the `patient_id`, `patient_name`, and `conditions` for patients who have **Type I Diabetes**.  
- **Type I Diabetes** conditions always start with the `DIAB1` prefix.

---

## Example Input

### Patients Table

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

---

## Example Output

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

---

## Explanation

- **Bob** has the condition `DIAB100`, which starts with the prefix `DIAB1`.
- **George** has the condition `DIAB100`, which also starts with the prefix `DIAB1`.
- **Daniel**, **Alice**, and **Alain** do not have conditions starting with the prefix `DIAB1`, so they are excluded.

---