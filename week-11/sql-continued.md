# SQL continued

Using the relational part of SQL is a big part of working with databases. Having Reviews connected to Products or employees that belong to a department. 



## Learning goals

- Can use `UPDATE`
- Can use `DELETE`
- Knows about relations in the database model (`PK`, `FK`, `NULL`)
- Can use `JOIN`



## Exercise - 20 min hmm måske ved ikke helt

Different groups. Each group has to prepare a presentation



## `UPDATE`

To update an existing row in the database use the `update` SQL command



```sql
UPDATE product SET price = 23, name = "candy" WHERE id = 1;
```

What do you think happen if we run this command: 

```sql
UPDATE product SET price = 23;
```



## `DELETE`

To delete a row use the `DELETE` SQL command

```sql
DELETE FROM product WHERE id = 1;
```



## Relations



### Primary key

The `PRIMARY KEY` constraint uniquely identifies each record in a table

Moreover, this identifier will automatically increment every time data is inserted. `id` is called the primary key of the table `product`.



```sql
CREATE TABLE product (	
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	price INT, 
	name VARCHAR(30), 
	description VARCHAR(255)
); 
```

`NOT NULL` - You can add `NOT NULL` after your column. This tells SQL that the column has to be included when a new row is created

`PRIMARY KEY` - means that the column called `id` has to be unique

`AUTO_increment` - When creating a new row the `id` does not have to be part of the insert statement. 



### Foreign key

Foreign keys are used to tell SQL that a column is connected to another column in another table. 

![Screenshot 2021-03-15 at 15.19.45](assets/foreign-keys.png)



```sql
CREATE TABLE product (	
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	price INT, 
	name VARCHAR(30), 
	description VARCHAR(255),
  review_id FOREIGN KEY REFERENCES review(id)
); 
```



```sql
CREATE TABLE review (	
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	text VARCHAR(255), 
); 
```



## Joins

To get data from two different tables we need use joins. Joins will combine two table into one table that can then be queried. 

Lets imagine we have to find out the location for all the employeers workplace. More specifically we would like to select the column `ENAME` from the table `EMP` with the column `LOC` from the `DEPT` table. This means we have to use a join!



Using the tables below lets try ourselves manually and make the join table!



**EMP**

![Screenshot 2021-03-16 at 11.07.43](assets/joins-1.png)



**DEPT**

![Screenshot 2021-03-16 at 09.42.58](assets/joins-2.png)



### Inner join

Only merge the rows where there is a match. In the example below: Only merge rows where the employees `DEPTNO` matches a departments `DEPTNO`.

```sql
SELECT EMP.ENAME, DEPT.LOC
from EMP
INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;
```



![Screenshot 2021-03-17 at 09.25.18](assets/inner-join.png)



### Left join

Keep all the records in the left table (`EMP`). Records that dont match get `null` values.

```sql
SELECT EMP.ENAME, DEPT.LOC
from EMP
LEFT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;
```



![Screenshot 2021-03-17 at 09.28.51](assets/left-joins.png)



### Right join

Keep all the records in the right table (`DEPT`). Records that dont match get `null` values.

```sql
SELECT EMP.ENAME, DEPT.LOC
from EMP
RIGHT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;
```



![Screenshot 2021-03-17 at 09.31.25](assets/right-joins.png)





## Exercises

We will be working with this database for today



![Screenshot 2021-03-16 at 11.22.13](assets/ap-database.png)