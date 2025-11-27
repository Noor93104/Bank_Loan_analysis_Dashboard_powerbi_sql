# Bank_Loan_Analysis_Using_SQL_and_PowerBi

## Project Overview

**Project Title**: Bank_Loan_Analysis_Using_SQL_and_PowerBi
**Level**: Beginner  
**Database**: `BANK_LOAN`

This dashboard helps banks or lending institutions analyze loan applications, repayment behavior, and financial performance using interactive visuals and KPIs using MS Excel, SQL ,PowerBi.

## Objectives

1. **SQL-Based Data Analysis:**: Multiple SQL queries were written to calculate KPIs such as total funded amount, total repayments, average interest rate, default risk 
                                 percentages, borrower segmentation, and loan purpose analysis.
2. **Data Cleaning & Preparation**:Missing values, inconsistent formats, and duplicate records were identified and resolved to prepare a clean dataset for model 
                                   building and dashboard development.
3. **Power BI Dashboard**:An interactive report was created to visualize performance trends including: Good vs Bad loan breakdown, Loan application trends over time,
                          Customer segmentation by employment length, loan term, and home ownership, State-wise loan performance and product demand patterns.
4. **Dashboard Development:**: Design an interactive Power BI dashboard with slicers, charts, and key metrics for better visualization and analysis of loan performance.

## Project Structure


### 1. Data Source & Import

The project begins with the raw bank loan dataset containing information related to loan applications, repayment history, customer demographics, financial metrics, and loan status.

**Data is imported for use in both SQL analysis and Power BI reporting.**

Sample Data Fields:
| id | issue_date | loan_amount | int_rate | dti | total_payment | loan_status | emp_length | purpose | address_state | term |

### 2. SQL Database Setup

A database named BANK_LOAN is created to store the dataset for analysis.
SQL is used to run exploratory analysis, derive KPIs, generate segmentation groups, and answer business-related questions.

'''CREATE DATABASE BANK_LOAN;
USE BANK_LOAN;'''


### SQL queries include:
**Total funded and received amounts.**
**Average interest rate and DTI ratio**
**Good vs Bad loan segmentation**
**Month, state, term, purpose, and employment-based analysis**

### 3. Data Cleaning & Transformation

Power Query (Power BI) and SQL are used to:
Remove duplicates
Handle null and missing values
Correct inconsistent formats (date, numeric, text fields)
Standardize column structure for modeling

### 4. Data Modeling & DAX Calculations

A structured analytical model is built in Power BI.
Relationships between fields are established (star schema when applicable).
Key DAX measures are created for dashboard metrics such as:

Total Loan Applications
Total Funded Amount
Total Amount Received
Average Loan Amount


## Findings

- **Loan Performance Segmentation**: The dataset reveals a clear distribution of loan statuses, with a significant portion categorized as Fully Paid and Current, while 
a smaller percentage falls under Charged-Off (Bad Loans) , indicating the level of portfolio risk.
- **Loan Term Insights**: Short-term loans (e.g., 36 months) show higher application volume compared to longer terms (e.g., 60 months), suggesting borrower preference 
for quicker repayment schedules.
- **Interest & Financial Indicators**: The average interest rate and debt-to-income (DTI) ratio provide insight into eligibility patterns and potential financial stress 
among borrowers.
- **Purpose-Based Loan Demand**:Categories such as debt consolidation, credit refinancing, and home improvement represent the highest loan demand, helping financial 
teams identify business growth drivers.

## Reports

- **Loan Portfolio Summary**:A comprehensive report highlighting total loan applications, funded amounts, repayment amounts, and overall loan status distribution.
- **Performance Trend Analysis**:Insights into month-wise loan applications, repayment trends, and lending activity patterns to identify seasonality or behavioral shifts.
- **Risk & Compliance Report:**:Analysis of good loans vs. bad loans, percentage of charged-off accounts, and financial exposure risk to support credit policy decisions.

## Conclusion

This project successfully demonstrates the end-to-end process of transforming raw financial loan data into meaningful business intelligence using SQL for data analysis and Power BI for visualization and reporting. Through SQL-based insights and dashboard metrics, the analysis provides a clear understanding of loan performance, borrower behavior, and financial risk patterns.
