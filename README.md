# HR Employee Attrition Analysis

## Overview
Analyzed HR data for 1,470 employees using SQL Server and Power BI to identify the key drivers of employee attrition and provide actionable retention recommendations.

## Dataset
IBM HR Analytics Employee Attrition dataset (1,470 employees, 35 attributes including Department, OverTime, JobSatisfaction, YearsAtCompany, and Attrition status).

## Process
1. **Data Cleaning:** Removed 3 non-informative columns (`EmployeeCount`, `Over18`, `StandardHours`) that had a single constant value across all records.
2. **SQL Analysis:** Wrote SQL Server queries to calculate attrition rates across Department, OverTime, Job Satisfaction, and Tenure groups.
3. **Power BI Dashboard:** Built an interactive dashboard with KPI cards, a Left vs. Stayed breakdown, and four comparison charts.

## Key Findings
- **Overall attrition rate: 16.12%** (237 of 1,470 employees left)
- **Overtime is the strongest driver:** employees working overtime left at **30.53%**, nearly 3x the rate of those who didn't (10.44%)
- **New employees are highest risk:** those in their first 0–2 years left at **29.82%**, compared to just 8.13% for employees with 10+ years
- **Sales has the highest departmental attrition** at 20.63%, followed by HR (19.05%) and R&D (13.84%)
- **Low job satisfaction correlates with attrition:** 22.84% for the lowest satisfaction level vs. 11.33% for the highest

## Recommendations
- Review workload distribution and reduce mandatory overtime in Sales, the highest-attrition department
- Introduce a structured 90-day onboarding and check-in program for new hires to address early-tenure attrition
- Implement regular manager check-ins to catch and address low job satisfaction before it leads to attrition

## Files
- `attrition_analysis_queries.sql` — SQL Server queries used for the analysis
- `HR_Attrition_Cleaned.csv` — cleaned dataset (columns with no informational value removed)
- `dashboard_screenshot.png` — Power BI dashboard screenshot

## Tools Used
SQL Server, Power BI (Power Query, DAX)
