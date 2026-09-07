create database HR_Attrition
use HR_Attrition
select * from [dbo].[HR-Employee-Attrition]

-- Query 1: Overall attrition rate by department
select department, count(*) AS employee_count
from [HR-Employee-Attrition]
group by department 

-- Query 2: Attrition by Department
select department, 
count(*) as employee_count,
sum(case when attrition = 1 then 1 else 0 end) as left_count,
Round(100.0 * sum(case when attrition = 1 then 1 else 0 end) / count(*), 2) as attrition_rate
from [HR-Employee-Attrition]
group by department
order by attrition_rate desc

-- Query 3: Attrition by OverTime
select OverTime, 
count(*) as employee_count,
sum(case when attrition = 1 then 1 else 0 end) as left_count,
Round(100.0 * sum(case when attrition = 1 then 1 else 0 end) / count(*), 2) as attrition_rate
from [HR-Employee-Attrition]
group by OverTime
order by attrition_rate desc

-- Query 4: Attrition by Job Satisfaction
select JobSatisfaction, 
count(*) as employee_count,
sum(case when attrition = 1 then 1 else 0 end) as left_count,
Round(100.0 * sum(case when attrition = 1 then 1 else 0 end) / count(*), 2) as attrition_rate
from [HR-Employee-Attrition]
group by JobSatisfaction
order by attrition_rate desc

-- Query 5: Attrition by Tenure (Years at Company)
select
  case
      WHEN YearsAtCompany <= 2 THEN '0-2 years'
      WHEN YearsAtCompany <= 5 THEN '3-5 years'
      WHEN YearsAtCompany <= 10 THEN '6-10 years'
      ELSE '10+ years'
 END AS tenure_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS left_count,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM [HR-Employee-Attrition]
GROUP BY 
    CASE 
        WHEN YearsAtCompany <= 2 THEN '0-2 years'
        WHEN YearsAtCompany <= 5 THEN '3-5 years'
        WHEN YearsAtCompany <= 10 THEN '6-10 years'
        ELSE '10+ years'
    END
ORDER BY attrition_rate DESC
