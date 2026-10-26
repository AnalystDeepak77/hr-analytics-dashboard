
-- =====================================================
-- PROJECT: HR ANALYTICS
-- TOOL: MySQL Workbench
-- DATASET: HR Employee Data
-- TOTAL EMPLOYEES: 1200
-- =====================================================


-- 1. View Sample HR Records
SELECT *
FROM hr_data
LIMIT 10;


-- 2. Total Number of Employees
SELECT
    COUNT(*) AS Total_Employees
FROM hr_data;


-- 3. Gender-wise Employee Distribution
SELECT
    Gender,
    COUNT(*) AS Employee_Count
FROM hr_data
GROUP BY Gender
ORDER BY Employee_Count DESC;


-- 4. Department-wise Employee Count
SELECT
    Department,
    COUNT(*) AS Employee_Count
FROM hr_data
GROUP BY Department
ORDER BY Employee_Count DESC;


-- 5. Average Monthly Income by Department
SELECT
    Department,
    ROUND(AVG(`Monthly Income INR`), 2) AS Average_Monthly_Income
FROM hr_data
GROUP BY Department
ORDER BY Average_Monthly_Income DESC;


-- 6. Employee Distribution by Age Group
SELECT
    `Age Group`,
    COUNT(*) AS Employee_Count
FROM hr_data
GROUP BY `Age Group`
ORDER BY Employee_Count DESC;


-- 7. Job Satisfaction Analysis
SELECT
    `Job Satisfaction`,
    COUNT(*) AS Employee_Count
FROM hr_data
GROUP BY `Job Satisfaction`
ORDER BY `Job Satisfaction`;


-- 8. Work-Life Balance Analysis
SELECT
    `Work Life Balance`,
    COUNT(*) AS Employee_Count
FROM hr_data
GROUP BY `Work Life Balance`
ORDER BY `Work Life Balance`;


-- 9. Department-wise Attrition Analysis
SELECT
    Department,
    Attrition,
    COUNT(*) AS Employee_Count
FROM hr_data
GROUP BY Department, Attrition
ORDER BY Department, Attrition;


-- 10. Overall Attrition Summary
SELECT
    Attrition,
    COUNT(*) AS Employee_Count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr_data),
        2
    ) AS Percentage
FROM hr_data
GROUP BY Attrition
ORDER BY Employee_Count DESC;
