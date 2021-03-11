# https://kea-fronter.itslearning.com/LearningToolElement/ViewLearningToolElement.aspx?LearningToolElementId=724896
# Select exercises

# 1
# a)
select * from DEPT;

# b)
select empno from EMP where ENAME = 'MARTIN';

# c)
select * from EMP where SAL > 1500;

# d)
select distinct JOB from EMP;

# e)
select ENAME from EMP where job = "SALESMAN" and SAL > 1300;

# f)
select ENAME from EMP where job != "SALESMAN";

# g)
select ENAME, SAL*0,9 from EMP where JOB = "CLERK";

# h)
select * from EMP where HIREDATE > "1981-05-01";

# I)
select SUM(IFNULL(SAL,0)) + SUM(IFNULL(COMM,0)) from EMP;

# j)
 select (SAL) + (COMM)  from EMP where COMM != '';

# k)
select ENAME, JOB from EMP where RIGHT(ENAME, 1) = 's';

# l)
select ENAME from EMP order by ENAME;

# m)
select * from EMP order by SAL DESC;

# n)
select ENAME from EMP where MGR is null;

# o)
select * from DEPT order by LOC;

# p)
select * from DEPT where LOC = "NEW YORK";


# Aggregate
# a)
select count(*) from EMP;

# b)
select sum(SAL) from EMP;

# c)
select avg(SAL) from EMP where DEPTNO = 20;

# d)
select distinct JOB from EMP;

# e)
select DEPTNO, count(*) as "NumberOfEmployees" from EMP group by DEPTNO;

# f)
select DEPTNO, max(SAL) from EMP group by DEPTNO;


