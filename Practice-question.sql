USE sakila;

CREATE TABLE tests (
    testid INT,
    marks INT
);

INSERT INTO tests(testid, marks) VALUES
(100, 55),
(101, 55),
(102, 60),
(103, 58),
(104, 40),
(105, 50);

select * from tests;

-- Q. You are given a table having the marks of one student in 
-- every test (Tests are held every day). You have to output the tests 
-- in which the student has improved his performance. 
-- For a student to improve his performance he has to score more than the previous test. 
-- Given that TestIDs are in increasing order, forming a continuous sequence without any missing numbers. 

select curr.testid from tests as curr join tests as pre on curr.testid = pre.testid + 1 where curr.marks > pre.marks; 
