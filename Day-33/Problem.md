## Table: Tree

| Column Name | Type |
|-------------|------|
| id          | int  |
| p_id        | int  |

- `id` is the column with unique values for this table.
- Each row represents a node in the tree:
  - `id`: The ID of the node.
  - `p_id`: The ID of its parent node.
- The given structure always represents a valid tree.

---

### Node Types
Each node in the tree can be classified into one of the following types:
1. **"Root"**: The node has no parent (`p_id IS NULL`).
2. **"Inner"**: The node has both a parent and at least one child.
3. **"Leaf"**: The node has a parent but no children.

---

### Problem Statement

Write a solution to determine the type of each node (`Root`, `Inner`, or `Leaf`) in the tree and report it.

Return the result table in any order.

---

### Example 1

#### Input:
**Tree table:**

| id | p_id |
|----|------|
| 1  | NULL |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |

#### Output:
| id | type  |
|----|-------|
| 1  | Root  |
| 2  | Inner |
| 3  | Leaf  |
| 4  | Leaf  |
| 5  | Leaf  |

#### Explanation:
- **Node 1**: `Root` because it has no parent (`p_id IS NULL`) and has child nodes (2 and 3).
- **Node 2**: `Inner` because it has a parent (1) and child nodes (4 and 5).
- **Nodes 3, 4, 5**: `Leaf` because they have parents but no children.

---

### Example 2

#### Input:
**Tree table:**

| id | p_id |
|----|------|
| 1  | NULL |

#### Output:
| id | type  |
|----|-------|
| 1  | Root  |

#### Explanation:
- **Node 1**: `Root` because it is the only node and has no parent.


