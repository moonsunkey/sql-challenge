
# UCB Challenge #9 Summary

## Table Creation
- Tables were created based on the column headers from each CSV file.

## Key Determination
- **departments**: `dept_no` is set as the Primary Key (PK).
- **dept_emp**: A composite key of `emp_no` and `dept_no` is set as the PK.
- **dept_manager**: A composite key is needed as the PK, with foreign keys (FK) for `dept_no` and `emp_no`.
- **employees**: `emp_no` is unique and is set as the PK. `emp_title_id` is set as a FK.
- **salaries**: `emp_no` is set as the PK after verifying no duplicates.
- **titles**: `title_id` is set as the PK with no duplicates found.

## Diagramming
- Utilized Lucidchart to create the ER diagram per the tutor Hassan's recommendation. A PNG format is also saved in the repo.
- Diagram URL: [Lucidchart ERD](https://lucid.app/lucidchart/346d0d16-2fad-4fe9-b189-7a41b01cf612/edit?viewport_loc=-477%2C1054%2C2218%2C1045%2C0_0&invitationId=inv_0fc68ef1-c50c-4c51-b097-ed08d59af768)

## Data Analysis
- Analysis performed mainly using SQL `JOIN` clauses.
- Found the use of subqueries challenging when it involves three or more tables.

1. **Simple Join**: Selected employees and their salaries by joining the relevant tables on `emp_no`.
2. **Year Extraction**: Applied a `WHERE` condition to filter records by year extracted from a `TIMESTAMP` data type.
3. **Department Managers**: Identified managers by joining `departments`, `dept_manager`, and `employees`.
4. **Department Employees**: Connected `dept_emp` with `departments` and `employees` to list employees in departments.
5. **Wildcard Search**: Used a `WHERE` condition with the `LIKE` operator for pattern matching.
6. **SALES Department Employees**: Used `dept_emp` to connect with `departments` and `employees`. Used a `WHERE` condition to find employees in this department.
7. **Extended Wildcard Search**: Built upon the previous query by adding an extra column and an `OR` condition.
8. **Aggregate and Sort**: Implemented `COUNT` with `GROUP BY` and `ORDER BY DESC` to sort last names by frequency.

