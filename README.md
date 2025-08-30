# 📊 HR Analytics Dashboard – Power BI  

## 📌 Project Overview  
This project is an **HR Analytics Dashboard built in Power BI**, designed to help organizations monitor and analyze employee data.  
The dashboard provides insights into **attrition, workforce demographics, salary distribution, and employee profiles**, enabling HR teams to make data-driven decisions.  

---

## 📂 Dataset  
The dataset used in this project contains **500 employee records** with the following fields:  

- `EmployeeID` – Unique identifier  
- `Name` – Employee name  
- `Department` – HR, Sales, IT, Finance, Marketing  
- `JobRole` – Manager, Analyst, Executive, Developer, Consultant  
- `Gender` – Male/Female  
- `Age` – Employee age (21–60)  
- `JoiningDate` – Date of joining  
- `Salary` – Monthly salary (₹20,000 – ₹1,20,000)  
- `Experience` – Years of experience  
- `PerformanceRating` – Rating (1–5)  
- `Attrition` – Yes/No (whether the employee has left)  

---

## ⚙️ Steps to Build the Dashboard  

### 1. Data Preparation  
- Loaded dataset into Power BI Desktop  
- Cleaned missing values (if any) in Power Query  
- Renamed columns for clarity  

### 2. DAX Measures Created  
```DAX
Total Employees = COUNTROWS(HR)

Attrition Count = CALCULATE(COUNTROWS(HR), HR[Attrition] = "Yes")

Attrition Rate = DIVIDE([Attrition Count], [Total Employees], 0)

Active Employees = CALCULATE(COUNTROWS(HR), HR[Attrition] = "No")

Average Age = AVERAGE(HR[Age])
```
---
### 🎨 Visuals Used

Cards (KPIs): Total Employees, Active Employees, Attrition Count, Attrition Rate, Average Age

Bar Chart: Attrition by Department

Donut Chart: Attrition by Gender

Column Chart: Salary by Job Role

Histogram: Age Distribution

Line Chart: Attrition Trend over Joining Date

Slicers: Department, Job Role, Gender

### 🎨 Dashboard Design & Colors

Primary: Blue (#1F77B4) → for KPIs

Positive Indicators: Green (#2CA02C)

Attrition Indicators: Red (#D62728)

Background: White / Light Gray

Layout: Minimal, clean, and business-friendly

### 🚀 Key Insights

Clear overview of employee distribution by department, gender, and age.

Departments with the highest attrition rates are easily identifiable.

Salary comparison highlights pay gaps across job roles.

Trend analysis shows how attrition varies over time.

Helps HR make data-driven retention strategies.

### 🛠 Tools Used

Power BI Desktop – Data Visualization

DAX – Measures & Calculations

Power Query – Data Cleaning

Excel/CSV – Initial dataset

### 📌 How to Use

Clone this repository

Download and open the .pbix file in Power BI Desktop

Interact with the dashboard using filters and slicers

Explore KPIs and drill down into details

## HR Analysis SQL File

This repository also includes a **SQL script (`hr_analysis.sql`)** that demonstrates how SQL can be used for HR analytics.  

### Operations performed in SQL:
- Creating a sample `HR_Employees` table  
- Inserting sample employee records  
- Viewing employee data  
- Department-wise employee count  
- Average salary by department  
- Gender distribution analysis  
- Attrition rate calculation  
- Identifying the highest paid employee  
- Finding employees with more than 5 years of experience  
- Salary band classification using CASE statements  

🙌 Author

👤 Prasang Jain

💼 Aspiring Data Analyst

🛠 Skills: Python | SQL | Power BI | Data Visualization | DAX