# JDBC

Lecture notes & Code examples for JDBC

Boilerplate:

https://github.com/nicklasdean/dat20c-2semester/tree/master/jdbc-basic

https://github.com/nicklasdean/dat20c-2semester/tree/master/jdbc-spring



# **Learning objectives**

- Retrieve data with JDBC API

  - Connection

  - Prepared Statements

  - ResultSet

  - Mapping the data to objects

    

# JDBC Exercises

#### User stories

###### 1. See all employees

The users want a feature, such that they can see all employees in a table, the same way that they can currently view all departments

###### Technical Requirements

A new controller & GetMapping

A new model for modelling Employee data

A new view for displaying all employees

A new repository for querying the employee database



###### 2. View single employee

The users want a feature, such that they can see a single employee by their employeenumber.

###### Technical Requirements

A new controller & GetMapping with request parameter: 

https://www.baeldung.com/spring-request-param

A new view for displaying a single employee

A new repository method for querying a single employee by their parameter



###### 3. Create new employe

The users want a feature, such that they can fill a form with employee data and create a new employee in the database.

###### Technical Requirements

A new controller & PostMapping

A new view with an input form, such that users can post new data & send to database

A new repository method for querying an insert statement with data from POST form



#### Advanced JDBC (Pokedex dataset)

###### 4. Specific Type

The users want a feature, such that they can search for all pokemon of a specified type

###### Technical requirements

A view with a form and a drop-down field. The input field display the different primary types & retrieves only pokemon of the specified type.

A model for Pokemon

###### 5. Search

The users want a feature, such that they can search for a pokemon name by a given text string.

###### Technical requirements

A view with a form with a text input field. The input field is text-based.

A view that displays all Pokemon that contains the text specified by the user.

