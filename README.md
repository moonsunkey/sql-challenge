# sql-challenge
UCB Challenge #9

Create the tables: I simply created the tables based on the column headers of each csv files. 

Determine Keys:

departments table: dept_no and dept_name are both unique but dept_no seems like the common columns for multiple tables. So it is set up as the PK for this table.

dept_emp table: There are records of the same emp_no is with different dept_no, which means the same employee can work for multiple departments. So we need assign the combination of emp_no and dept_no as PK. 

dept_manager table: There are instances where multiple emp_no to the same dept_no and one emp_no to multiple dept_no, a composite key is needed as PK. To ensure that every dept_no in the table corresponds to an existing department in the departments table, a foreign key of dep_no is created; similarly, to ensure that every emp_no corresponds to an existing employee in the employees table, a foreign key of emp_no is added.

employees table: emp_no is unique, so it is set as the PK for this table. I also set up emp_title _id as FK to ensure every emp_no has a title exist in titles table.

salaries: First checked if there are emp_no duplicates just in case there are multiple salary record for some employees. It didn't return any duplicate which means the table is only tracking the current salary. Then I set emp_no as PK.

titles: Set up title_id as primary key after checking there is no duplicate of title_id