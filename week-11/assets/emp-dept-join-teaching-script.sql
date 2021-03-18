DROP SCHEMA  if exists emp_dept;
create schema emp_dept;
use emp_dept;

DROP TABLE if exists EMP;
DROP TABLE if exists DEPT;

CREATE TABLE DEPT (	
	DEPTNO INTEGER, 
	DNAME VARCHAR(30), 
	LOC VARCHAR(30), 
	PRIMARY KEY (DEPTNO)
); 

CREATE TABLE EMP(	
	EMPNO INTEGER, 
	ENAME VARCHAR(30), 
	JOB VARCHAR(30), 
	MGR INTEGER, 
	HIREDATE DATE, 
	SAL INTEGER, 
	COMM INTEGER, 
	DEPTNO INTEGER, 
	PRIMARY KEY (EMPNO),
	FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO)
);


Insert into DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');

insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,null);
insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,null,10);
insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values (7369,'SMITH','CLERK',7902,'1980-12-17',800,null,30);
insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values (7521,'WARD','SALESMAN',7698,'1981-02-22', 1250,500,30);
insert into emp (empno,ename,job,mgr,hiredate,sal,comm,deptno) values (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,40);

commit;

