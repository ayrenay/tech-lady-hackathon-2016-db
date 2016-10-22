/* 
	This tells the database management system (DBMS)
	to set aside space and create structure for 
	working data and database objects.
	
	It's required when working within SQL Fiddle.
*/
create schema techladyhackathon_init;

/* Create your first table */

-- (1) Create table

--Paste the following into the Schema (left) panel
create table
student
(
	first_name varchar(50)
	, last_initial char(1)
	, track varchar(25)
);

-- (2) Check table structure

--Paste the following into the Query (right) panel
select		column_name
			, data_type
from      	information_schema.columns
where     	table_name = 'student'
;

/* *** In some databases, you can simply use the command
	   'describe <tablename>;' *** */
	  
-- (3) Look at the table data

--Paste the following into the Query (right) panel
select		*	
from		student
;  -- Records returned: ______ <--- Fill in the blank

-- (4) Add some data to the table
/*
	Here, we use the INSERT statement, but, many times,
	you will also want to load data in from an external
	file or source. 
	
	The process will vary depending on the tool
	that you are using. Be sure to read the documentation
	carefully, consult a knowledgable colleague, and/or
	reach out to the online community if you have any
	questions!
*/

--Paste the following into the Schema (left) panel
INSERT INTO student
    ("first_name", "last_initial", "track")
VALUES
    ('Alexis', 'J', 'Data'),
    ('Lin', 'Y', 'Design'),
    ('Elise', 'Z', 'Data'),
    ('Nellie', 'F', 'General'),
    ('Mel', 'B', 'Design'),
    ('Liza', 'G', 'General'),
    ('Beatrice', 'M', 'Data')
;

-- (5) Take another look at the table
select		*	
from		student
; -- Records returned: ______ <--- Fill in the blank



/* Maniupulating Data */
--Paste the following into the Query (right) panel

-- (1) Filtering data with WHERE

--Which students are on the data track?
select		*	
from		student
where		-- add your condition here --
;

-- (2) Sorting data with ORDER BY

--Sort the students by first name
select		*
from		student
order by	-- add your expressions here --
;

-- (3) Using single-row functions

--Show first name in upper case
select		-- add your function here--
from		student
;

-- (3) Using aggregate functions

--How many students are there?
select		-- add your function here--
from		student
;

-- (4) Using aggregate functions and non-aggregate expressions

--How many students are there in each track?
select		-- add your expression here--
			, -- add your function here--
from		student
group by	-- add your expression here--
;

-- (5) Filter aggregate data

--Which tracks have fewer than 3 students?
select		-- add your expression here--
			, -- add your function here--
from		student
group by	-- add your expression here--
having 		-- add your condition here --
;