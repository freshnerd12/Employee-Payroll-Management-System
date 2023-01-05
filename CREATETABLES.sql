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
