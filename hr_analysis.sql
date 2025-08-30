-- ==============================
-- HR Analysis Project SQL Script
-- ==============================

-- 1. Create HR_Employees table
CREATE TABLE HR_Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Salary DECIMAL(10,2),
    JoiningDate DATE,
    Attrition VARCHAR(10) -- Yes/No
);

-- 2. Insert Sample Data
INSERT INTO HR_Employees (EmployeeID, Name, Department, Gender, Age, Salary, JoiningDate, Attrition) VALUES
(1, 'Amit Sharma', 'Finance', 'Male', 29, 55000, '2020-06-15', 'No'),
(2, 'Priya Singh', 'HR', 'Female', 32, 60000, '2018-03-10', 'Yes'),
(3, 'Rohit Kumar', 'IT', 'Male', 27, 75000, '2021-08-20', 'No'),
(4, 'Anita Verma', 'Marketing', 'Female', 35, 68000, '2019-11-01', 'No'),
(5, 'Suresh Yadav', 'IT', 'Male', 40, 85000, '2015-01-12', 'Yes');

-- 3. View all data
SELECT * FROM HR_Employees;

-- 4. Count employees by Department
SELECT Department, COUNT(*) AS Employee_Count
FROM HR_Employees
GROUP BY Department
ORDER BY Employee_Count DESC;

-- 5. Average salary by Department
SELECT Department, ROUND(AVG(Salary), 2) AS Avg_Salary
FROM HR_Employees
GROUP BY Department;

-- 6. Gender distribution
SELECT Gender, COUNT(*) AS Count
FROM HR_Employees
GROUP BY Gender;

-- 7. Attrition rate (total employees vs left)
SELECT 
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS Attrition_Rate_Percent
FROM HR_Employees;

-- 8. Highest paid employee
SELECT TOP 5 Name, Department, Salary
FROM HR_Employees
ORDER BY Salary DESC;

-- 9. Employees with more than 5 years of experience
-- (Note: Use GETDATE() in SQL Server, CURRENT_DATE in MySQL/Postgres)
SELECT 
    Name, 
    Department, 
    DATEDIFF(YEAR, JoiningDate, GETDATE()) AS Experience_Years
FROM HR_Employees
WHERE DATEDIFF(YEAR, JoiningDate, GETDATE()) > 5;


-- 10. Salary range classification (using CASE)
SELECT 
    Name,
    Department,
    Salary,
    CASE 
        WHEN Salary < 60000 THEN 'Low'
        WHEN Salary BETWEEN 60000 AND 80000 THEN 'Medium'
        ELSE 'High'
    END AS Salary_Band
FROM HR_Employees;
