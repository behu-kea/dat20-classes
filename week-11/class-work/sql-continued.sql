use product_database;

UPDATE product SET price = 23 WHERE id = 1;

UPDATE product set name = 'television' WHERE name = 'test title';

DELETE FROM product WHERE name = 'television';

DELETE FROM product;

CREATE TABLE product_primary (    
  id INT NOT NULL AUTO_INCREMENT,
    price INT, 
    name VARCHAR(30), 
    description VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO product_primary(price, description) VALUES (123, 'great tv');

CREATE TABLE product_primary_null (    
  id INT NOT NULL AUTO_INCREMENT,
    price INT,
    name VARCHAR(30) NOT NULL, 
    description VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO product_primary_null(price, description) VALUES (123, 'great tv');


CREATE TABLE product_foreign_key (    
  id INT NOT NULL AUTO_INCREMENT,
  price INT, 
  name VARCHAR(30),  
  description VARCHAR(255),
  review_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (review_id) REFERENCES review(id)
);


CREATE TABLE review (   
  id INT NOT NULL AUTO_INCREMENT,
  text VARCHAR(255),
  PRIMARY KEY (id)
);


INSERT INTO product_foreign_key(price, name,  description) VALUES (123, 'tv', 'great tv');
INSERT INTO review(text) VALUES ('Fine desing. 4/5 stars from me');
INSERT INTO review(text) VALUES ('ugly television');

INSERT INTO product_foreign_key(price, name,  description, review_id) VALUES (123, 'show', 'fine show', 2);

INSERT INTO review(text) VALUES ('This coffee is so great!');
INSERT INTO product_foreign_key(price, name,  description, review_id) VALUES (799, 'coffee', 'fine coffee', 3);



# Joins ---------------

## for creation:
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




SELECT *
from EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

SELECT *
from DEPT
INNER JOIN EMP ON EMP.DEPTNO = DEPT.DEPTNO;

SELECT EMP.ENAME, DEPT.LOC
from EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

SELECT *
from EMP
LEFT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

SELECT *
from EMP
RIGHT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;
