# SQL 3 - Aggregate functions

Lecture notes & Code examples for aggregate functions

# **Learning objectives**

- Further understanding for aggregate functions for advanced querying
  - `AVG()`
  - `SUM()`
  - `COUNT()`
- Using `GROUP BY` to group aggregated result values

# **Aggregate functions with employees & departments**

> Remember to `USE` the employees & departments database:

```mysql
USE employees_departments;
```

## **Average salary of all employees**

```mysql
SELECT AVG(sal)
FROM employees;
```

Will yield the result: 2073.2143

> For a better looking (yet less precise) output, we can round the number with a rounding function

```mysql
SELECT ROUND(AVG(sal))
FROM employees;
```

Which will yield the result: 2073



## Average salary of employees - grouped by department

To understand the average salary of employees - we need data from both the employee & department tables

```mysql
SELECT *
FROM employees
INNER JOIN departments
ON employees.deptno = departments.deptno;
```

Which will yield the result:

| empno  | ename    | job         | mgr    | hiredate     | sal    | comm | deptno | deptno | dname        | loc        |
| ------ | -------- | ----------- | ------ | ------------ | ------ | ---- | ------ | ------ | ------------ | ---------- |
| '7782' | 'CLARK'  | 'MANAGER'   | '7839' | '1981-06-09' | '2450' | NULL | '10'   | '10'   | 'ACCOUNTING' | 'NEW YORK' |
| '7839' | 'KING'   | 'PRESIDENT' | NULL   | '1981-11-17' | '5000' | NULL | '10'   | '10'   | 'ACCOUNTING' | 'NEW YORK' |
| '7934' | 'MILLER' | 'CLERK'     | '7782' | '1982-01-23' | '1300' | NULL | '10'   | '10'   | 'ACCOUNTING' | 'NEW YORK' |
| '7369' | 'SMITH'  | 'CLERK'     | '7902' | '1980-12-17' | '800'  | NULL | '20'   | '20'   | 'RESEARCH'   | 'DALLAS'   |
| ...    | ...      | ...         | ...    | ...          | ...    | ...  | ...    | ...    | ...          | ...        |

> Replace the `*`  with `AVG(sal)`and add `GROUP BY dname`

```mysql
SELECT dname, AVG(sal)
FROM employees
INNER JOIN departments
ON employees.deptno = departments.deptno
GROUP BY dname
```

E voila - salary average by department:

| Dname      | avg(SAL)  |
| ---------- | :-------- |
| ACCOUNTING | 2916.6667 |
| RESEARCH   | 2175.0000 |
| SALES      | 1566.6667 |

## Nested query: Display all employees with a salary above the average

As the results from queries are either or single values, we can utilize the results in queries. 

We can think of finding the result in a small sequence of steps: 

- Query the average salary for all departments
- Use the result to as a value to filter out employees in a `WHERE` clause

Recall the following query:

```mysql
SELECT AVG(sal)
FROM employees;
```

Yields the result:  2073.2143 - aka the average salary for all employees

This result can be used - nested in another query

```mysql
SELECT ename, sal
FROM employees
WHERE sal > (
	SELECT AVG(sal)
	FROM employees);
```

Which will yield the following result: 

| ename | sal  |
| ----- | ---- |
| JONES | 2975 |
| BLAKE | 2850 |
| ...   | ...  |

# **Exercises: Pokedex **

In the current lecture + next you will be working with the following data-set: 

**LINK**

You will be working in the groups, that you are currently already assigned in the UI project.

###### Answer the following questions

###### 1. What are the contents of the data-set?

###### 2. What are the semantics (meaning) of the data-set?

###### Exercises:

- How many pokemon exists pr. primary type?
- What are the average defence for all pokemon?
- What are the average hp for (primary) grass types? 
- How many pokemon exists pr. primary type?
- How many fire pokemon has higher hp than the average pokemon?
- What primary type are the fastest?

**The answers will be publicized later in the semester. You can turn in your guess by Fronter** 

