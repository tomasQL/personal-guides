## **MySQL laboratory - 1**  
### *Basic SQL*
#  
Monitoring and selecting  

    SHOW DATABASES;  
  
To explore a particular database:
  
    USE mysql;
  
The **USE** statements allow us to let MySQL know the DB we want  
to interact with.  
  
  
To examine how the DB was created:  
  
    SHOW CREATE DATABASE mysql;  
  
What tables the MySQL DB holds:  
  
    SHOW TABLES;  
  
Explore the structure of a table:  
  
    DESCRIBE user;  
  
Use the SHOW statement to display how the table was created:  
  
    SHOW CREATE TABLE servers;  
  
We can display the column info for a table:
  
    SHOW COLUMNS FROM servers;  

#

Creating a Database  
  
-- Query 1  

    CREATE DATABASE MovieIndustry;
  
-- Query 2 when writing scripts that may be invoked repeatedly  

    CREATE DATABASE IF NOT EXISTS MovieIndustry;
  
-- Query 3 to inspect the changes  

    SHOW DATABASES;

-- Query 4  

    DROP DATABASE MovieIndustry;
  
#
  
Creating a Table
  
Syntax:

    CREATE TABLE tableName(
    
    col1 <dataType> <Restrictions>,

    col2 <dataType> <Restrictions>,

    col3 <dataType> <Restrictions>,

    <Primary Key or Index definitions>);
  

Column syntax:

    columnName columnType [NOT NULL | NUILL] [DEFAULT columnValue]
  
*i.e*  

    CREATE TABLE Actors (
    Id INT AUTO_INCREMENT,
    FirstName VARCHAR(20) NOT NULL,
    SecondName VARCHAR(20) NOT NULL,
    DoB DATE NOT NULL,
    Gender ENUM('Male','Female','Other') NOT NULL,
    MaritalStatus ENUM('Married','Divorced','Single','Unknown') DEFAULT "Unknown",
    PRIMARY KEY (Id));

-- Alternative Query

    CRREATE TABLE IF NOT EXISTS Actors (
    Id INT AUTO_INCREMENT,
    FirstName VARCHAR(20) NOT NULL,
    SecondName VARCHAR(20) NOT NULL,
    DoB DATE NOT NULL,
    Gender ENUM('Male','Female','Other') NOT NULL,
    MaritalStatus ENUM('Married','Divorced','Single','Unknown') DEFAULT "Unknown",
    PRIMARY KEY (Id));  
  
Some restrictions exist when using AUTO_INCREMENT feature: 
   
- Can be only one column marked as AUTO_INCREMENT in a table.  
- The AUTO_INCREMENT column can't have a default value.  
- The AUTO_INCREMENT column must be indexed.  
- AUTO_INCREMENT feature isn't portable to other databases and counter  
    is reset when truncate or drop a table.  
  
  
Temporary Table

    CREATE TEMPORARY TABLE tableName(
    
    col1 <dataType> <Restrictions>,

    col2 <dataType> <Restrictions>,

    col3 <dataType> <Restrictions>,

    <Primary Key or Index definitions>);
  
Say we want to capture only the first names of actors in a table.  
We can create a temporary table and populate it with only the first name.  

    CREATE TEMPORARY TABLE ActorsNames (
    FirstName CHAR(20));
  
If exit the session and we log back into the monitor program, the temporary  
table ActorNames has been deleted.  
  
#  
Collations & Character Sets
  
The aviable character sets on the server:

    SHOW CHARACTER SET;

List the collations:  
    
    SHOW COLLATION;

Inspect the defaults for our server.

    SHOW VARIABLES LIKE "c%";

#  
