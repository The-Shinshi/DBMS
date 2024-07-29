create user abc@localhost identified by 'abc' 

GRANT ALL PRIVILEGES ON *.* TO 'abc@localhost' WITH GRANT OPTION; 

FLUSH PRIVILEGES; 

create database dbemployee; 
use dbemployee; 
show databases; 

CREATE TABLE Employee (EMPNO INT , 
ENAME VARCHAR(255) , 
JOB VARCHAR(255) , 
MANAGER_NO INT, 
SAL DECIMAL(10, 2) , 
COMMISSION DECIMAL(10, 2)); 

desc Employee; 
drop table Employee1; 

INSERT INTO Employee (EMPNO, ENAME, JOB, MANAGER_NO, SAL, COMMISSION) 
VALUES (1, 'Ajay Kumar', 'Manager', 2, 5000.00, 1000.00); 

INSERT INTO Employee (EMPNO, ENAME, JOB, MANAGER_NO, SAL, COMMISSION) 
VALUES (2, 'Amith Kumar', 'HRManager', 4, 7000.00, 3000.00); 

INSERT INTO Employee (EMPNO, ENAME, JOB, MANAGER_NO, SAL, COMMISSION) 
VALUES (3, 'Aman Kumar', 'Tester', 8, 3000.00, 2000.00); 

COMMIT; 

ALTER TABLE Employee ADD PRIMARY KEY( EMPNO); 
ALTER TABLE Employee MODIFY ENAME VARCHAR(255) NOT NULL; 

INSERT INTO Employee (EMPNO, ENAME, JOB, MANAGER_NO, SAL, COMMISSION)  
VALUES (4, 'XYZ', 'clerk' ,3, 50000, 20);  

INSERT INTO Employee (EMPNO, ENAME, JOB, MANAGER_NO, SAL, COMMISSION)  
VALUES (5, 'Hemath', NULL,NULL, NULL, null);  

SELECT * FROM Employee; 

delete from Employee where EMPNO=4; 

UPDATE Employee SET ENAME='Amit Kumar12' where EMPNO=1; 

select * from Employee; 
ROLLBACK;