# SQL continued

Using the relational part of SQL is a big part of working with databases. Having Reviews connected to Products or employees that belong to a department. 



## Learning goals

- Can use `UPDATE`
- Can use `DELETE`
- Can use `ALTER`
- Knows about relations in the database model (PK, FK, NULL)
- Can use `JOIN`
- 



## Exercise





## `Update`

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



## `ALTER`

