-- Add PK to departments:
ALTER TABLE departments
ADD PRIMARY KEY (dept_no);

-- Add PK and FK to dept_emp:
ALTER TABLE dept_emp
ADD PRIMARY KEY (emp_no, dept_no);

ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_dept_no
FOREIGN KEY (dept_no) 
REFERENCES departments(dept_no);

-- Add PK and FK's to dept_manager:
ALTER TABLE dept_manager
ADD PRIMARY KEY (dept_no, emp_no);

ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_dept_no
FOREIGN KEY (dept_no) 
REFERENCES departments(dept_no);

ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_emp_no
FOREIGN KEY (emp_no) 
REFERENCES employees(emp_no);


-- Add PK to titles:
-- Check duplicates for title_id
SELECT title_id, COUNT(*)
FROM titles
GROUP BY title_id
HAVING COUNT(*) > 1;

ALTER TABLE titles
ADD PRIMARY KEY (title_id);

-- Add PK and FK to employees:
-- Check duplicates for emp_no
SELECT emp_no, COUNT(*)
FROM employees
GROUP BY emp_no
HAVING COUNT(*) > 1;

-- No duplicates found, add keys:
ALTER TABLE employees
ADD PRIMARY KEY (emp_no);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_emp_title_id
FOREIGN KEY (emp_title_id) 
REFERENCES titles(title_id);

-- Add PK to salaries:
-- check duplicates
SELECT emp_no, COUNT(*)
FROM salaries
GROUP BY emp_no
HAVING COUNT(*) > 1;

ALTER TABLE salaries
ADD PRIMARY KEY (emp_no);

SELECT * FROM titles;
