
-- Create the SQL Schema

Create table If Not Exists Department (id int, revenue int, month varchar(5))
Truncate table Department
insert into Department (id, revenue, month) values ('1', '8000', 'Jan')
insert into Department (id, revenue, month) values ('2', '9000', 'Jan')
insert into Department (id, revenue, month) values ('3', '10000', 'Feb')
insert into Department (id, revenue, month) values ('1', '7000', 'Feb')
insert into Department (id, revenue, month) values ('1', '6000', 'Mar')

/*
Table: Department
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| revenue     | int     |
| month       | varchar |
+-------------+---------+
(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].

Prompt:

Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

Return the result table in any order.

The query result format is in the following example.









Example 1:

Input: 
Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+
Output: 
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+
Explanation: The revenue from Apr to Dec is null.
Note that the result table has 13 columns (1 for the department id + 12 for the months).
*/

-- Solution:

select id,
sum(case when month ='JAN' then revenue END) as Jan_Revenue,
sum(case when month ='Feb' then revenue END) as Feb_Revenue,
sum(case when month ='Mar' then revenue END) as Mar_Revenue,
sum(case when month ='Apr' then revenue END) as Apr_Revenue,
sum(case when month ='May' then revenue END) as May_Revenue,
sum(case when month ='Jun' then revenue END) as Jun_Revenue,
sum(case when month ='Jul' then revenue END) as Jul_Revenue,
sum(case when month ='Aug' then revenue END) as Aug_Revenue,
sum(case when month ='Sep' then revenue END) as Sep_Revenue,
sum(case when month ='Oct' then revenue END) as Oct_Revenue,
sum(case when month ='Nov' then revenue END) as Nov_Revenue,
sum(case when month ='Dec' then revenue END) as Dec_Revenue
from department group by 1 order by 1;









