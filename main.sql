
----= Create Tables

---- Employees

CREATE Table Employee(
  Employee_ID INT(4),
  Department_ID INT(4),
  Account_ID INT(4),
  Attendance_ID INT(4),
  First_Name VARCHAR(25),
  Last_Name VARCHAR(25),
  Hire_Date DATE,
  City VARCHAR(25),
  St VARCHAR (25),
  CONSTRAINT Employee_PK PRIMARY KEY (Employee_ID),
  Foreign Key (Department_ID)
    REFERENCES Department(Department_ID),
  Foreign Key (Account_ID)
    REFERENCES Account_Details(Account_ID),
  Foreign Key (Attendance_ID)
    REFERENCES Attendance(Attendance_ID)
);

---- Department

CREATE Table Department(
  Department_ID INT(4),
  Employee_ID INT(4),
  Department Name VARCHAR(30),
  Constraint Department_PK Primary Key (Department_ID),
  Foreign Key (Employee_ID)
    REFERENCES Employee(Employee_ID)
);


---- Attendance

CREATE TABLE Attendance (
  Attendance_ID INT(4),
  Employee_ID INT(4),
  Total_Working_Hours INT(3),
  Constraint Attendance_PK Primary Key (Attendance_ID),
  Foreign Key (Employee_ID)
    REFERENCES Employee(Employee_ID)
);

---- Leave

CREATE Table Time_Off(
  Leave_ID INT(4),
  Attendance_ID INT(4),
  Leave_date DATE,
  Vacation_Hours INT(3),
  Sick_Time_Off INT(3),
  Marternal_Time_Off INT(3),
  Constraint Leaving_PK Primary Key (Leave_ID),
  Foreign Key (Attendance_ID)
    REFERENCES Attendance(Attendance_ID)
);

---- Account Details

CREATE Table Account_Details(
  Account_ID INT(4),
  Employee_ID INT(4),
  Routing_number INT(12),
  Account_number INT(20),
  Bank_Name VARCHAR(30),
  Constraint Account_Details_PK Primary Key (Account_ID),
  Foreign Key (Employee_ID)
    REFERENCES Employee(Employee_ID)
);


---- Wage

CREATE Table Wage(
  Wage_ID INT(4),
  Account_ID INT(4),
  Hourly_Wage DECIMAL(4,2),
  Overtime_Wage DECIMAL(4,2),
  Income_Tax DECIMAL(4,2),
  Constraint Wage_ID_PK Primary Key (Wage_ID),
  Foreign Key (Account_ID)
    REFERENCES Account_Details(Account_ID)
);
----- Insert INTO Tables

INSERT INTO Employee VALUES (101,1,40,'Ojas','Phansekar','14-APR-16','New York City','New York',1);
INSERT INTO Employee VALUES (102,2,41,'Vrushali','Patil','21-JUN-18','Boston','Massachusetts',2);
INSERT INTO Employee VALUES (103,3,42,'Pratik','Parija','13-SEP-19','Chicago','Illinois',3);
INSERT INTO Employee VALUES (104,4,43,'Chetan','Mistry','12-APR-11','Miami','Florida',4);
INSERT INTO Employee VALUES (105,5,44,'Anugraha','Varkey','16-AUG-17','Atlanta','Georgia',5);
INSERT INTO Employee VALUES (106,6,45,'Rasagnya','Reddy','25-JUL-18','San Mateo','California',6);
INSERT INTO Employee VALUES (107,7,46,'Aishwarya','Boralkar','18-DEC-10','San Francisco','California',7);
INSERT INTO Employee VALUES (108,8,47,'Shantanu','Savant','27-NOV-15','Seattle','Washington',8);
INSERT INTO Employee VALUES (109,8,48,'Kalpita','Malvankar','24-APR-16','Boston','Massachusetts',8);
INSERT INTO Employee VALUES (110,8,49,'Saylee','Bhagat','21-MAY-14','San Francisco','California',7);


INSERT INTO Department VALUES (1,101,'Human Resources');
INSERT INTO Department VALUES (2,102,'Software Development');
INSERT INTO Department VALUES (3,103,'Data Analysis');
INSERT INTO Department VALUES (4,104,'Data Science');
INSERT INTO Department VALUES (5,105,'Business Intelligence');
INSERT INTO Department VALUES (6,106,'Data Engineering');
INSERT INTO Department VALUES (7,107,'Manufacturing');
INSERT INTO Department VALUES (8,108,'Quality Control');

INSERT INTO Attendance VALUES (90,101,10);
INSERT INTO Attendance VALUES (91,102,20);
INSERT INTO Attendance VALUES (92,103,30);
INSERT INTO Attendance VALUES (93,104,40);
INSERT INTO Attendance VALUES (94,105,45);
INSERT INTO Attendance VALUES (95,106,56);
INSERT INTO Attendance VALUES (96,107,58);
INSERT INTO Attendance VALUES (97,108,40);
INSERT INTO Attendance VALUES (98,109,32);
INSERT INTO Attendance VALUES (99,110,27);

INSERT INTO Time_Off VALUES (51,104,'1-DEC-19',0,0,0);
INSERT INTO Time_Off VALUES (52,108,'2-DEC-19',15,0,3);
INSERT INTO Time_Off VALUES (53,109,'3-DEC-19',0,0,20);
INSERT INTO Time_Off VALUES (54,107,'4-DEC-19',12,0,0);
INSERT INTO Time_Off VALUES (55,106,'5-DEC-19',0,12,3);
INSERT INTO Time_Off VALUES (56,104,'6-DEC-19',0,7,0);
INSERT INTO Time_Off VALUES (57,108,'7-DEC-19',0,0,0);
INSERT INTO Time_Off VALUES (58,109,'7-DEC-19',7,6,5);
INSERT INTO Time_Off VALUES (59,107,'8-DEC-19',0,1,2);
INSERT INTO Time_Off VALUES (60,106,'9-DEC-19',10,9,8);

INSERT INTO Account_Details VALUES (40,101,0177001, 0177897396, 'Wells Fargo');
INSERT INTO Account_Details VALUES (41,102,0177001, 0177897343, 'Wells Fargo');
INSERT INTO Account_Details VALUES (42,103,0177001, 0177897323, 'Wells Fargo');
INSERT INTO Account_Details VALUES (43,104,0177001, 0177897346, 'Wells Fargo');
INSERT INTO Account_Details VALUES (44,105,0177001, 0177897663, 'Wells Fargo');
INSERT INTO Account_Details VALUES (45,106,0177896, 0177897892, 'CHASE');
INSERT INTO Account_Details VALUES (46,107,0177896, 0177897713, 'CHASE');
INSERT INTO Account_Details VALUES (47,108,0177896, 0177897353, 'CHASE');
INSERT INTO Account_Details VALUES (48,109,0177896, 0177897312, 'CHASE');
INSERT INTO Account_Details VALUES (49,110,0177896, 0177897322, 'CHASE');

INSERT INTO Wage VALUES (1,40,12.00,0.00,150.00);
INSERT INTO Wage VALUES (2,41,12.00,0.00,150.00);
INSERT INTO Wage VALUES (3,42,12.00,0.00,150.00);
INSERT INTO Wage VALUES (4,43,12.00,0.00,300.00);
INSERT INTO Wage VALUES (5,44,12.00,67.5,300.00);
INSERT INTO Wage VALUES (6,45,12.00,216,300.00);
INSERT INTO Wage VALUES (7,46,12.00,243,300.00);
INSERT INTO Wage VALUES (8,47,12.00,0.00,300.00);
INSERT INTO Wage VALUES (9,48,12.00,0.00,150.00);
INSERT INTO Wage VALUES (10,49,12.00,0.00,150.00);





