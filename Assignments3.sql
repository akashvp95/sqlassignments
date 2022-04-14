
--write a query to display the orders placed by customer with phone number 030-0074321

SELECT * FROM
Customer c
inner join
OrderTable O
on c.CustomerId = o.CustomerId
WHERE Phone ='030-0074321'

--fetching all the products which are available under Category ‘Seafood’.

SELECT * FROM ProductTable
WHERE CATEGORY ='SeaFood'

--Display the orders placed by customers not in London

SELECT * FROM
Customer C
inner join
OrderTable O
on c.CustomerId = o.CustomerId
WHERE City NOT IN('london')

--selects all the order which are placed for the product Chai.

SELECT * FROM ProductTable
WHERE ProductName ='chai'

--Write a query to display the name , department name and rating  of any given employee

SELECT E.NAME AS EMP_NAME , D.DeptName AS DEPT_NAME,E.RATING
FROM Employee E INNER JOIN Dept D
ON E.DEPTID=D.DEPTID

select * from Employee

CREATE TABLE dept (
  DEPTID INT PRIMARY KEY,
  DEPTNAME varchar(30) NOT NULL,
  LOC varchar(40) NOT NULL
);


ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMPLOYEEDEPT
FOREIGN KEY (DEPTID) REFERENCES DEPT(DEPTID)

INSERT INTO dept VALUES ('1','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('2','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('3','SALES','CHICAGO');
INSERT INTO dept VALUES ('4','OPERATIONS','BOSTON');


