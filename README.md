The below are the details how this solution can be executed

System requirements:
* Instance of SQL server 2014
* Visual studio with SSIS 2015
* OLTP & DW database to be installed in SQL instance

Table Creation:
* Create new fact table using script file -Create_Fact.sql
SSIS Solution
* Download the solution and copy it in the local path.
* Open VS2015 with SSIS, Open project and select the local path where you stored the files
* Search for Microsoft visual studio solution file - SSIS_Technical_Test This will open all the solution in your visual studio.
* Once the solution is loaded in your system, first change the connection to your local SQL Instance and test connection.
o In solution explorer, open connection manager and change the server details and select the source DB connection and test connection 
o In solution explorer, open connection manager and change the server details and select the Target DB connection and test connection 
Once the test connection has been established, execute packages in below order

Execution of Packages:
To execute, right click and select execute package and order to execute are as below,
1. Dim_Product
2. Dim_Customer
3. Dim_Currency
4. Dim_Promotion
5. Fact_Sales_USD_NZD

Note: Ideally it is advised to create a master package ( SSIS_Tech_test) and call all these packages in Sequence container using Execute Package task. But I faced some weird tool issue while testing all these packages, i.e sometimes it reads 0 records from source and sometimes it reads the all data. This may be due to my system configuration is low. Still have that master package in solution, and to avoid any data mismatch I am requesting to do manual run as above steps.
