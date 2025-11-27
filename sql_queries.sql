CREATE DATABASE BANK_LOAN;
USE BANK_LOAN;

#KEY PERFORMANCE INDICATORS

#Total Loan Applications
SELECT COUNT(id) AS Total_loan_applications
FROM financial_loan_data;


#Total Funded Amount
SELECT SUM(loan_amount) AS Total_funded_amount
FROM financial_loan_data;


#Total amount received
SELECT SUM(total_payment) AS Total_amount_received
FROM financial_loan_data;


#Average interest rate
SELECT round(AVG(int_rate),3)*100 AS Average_interest_rate
FROM financial_loan_data;


#Average_DTI_ratio
SELECT round(avg(dti),4)*100 AS Average_DTI_ration
FROM financial_loan_data;


#GOOD LOAN VS BAD LOAN

#Good loan application percentage
SELECT 
(COUNT(CASE WHEN loan_status = "Fully Paid" OR loan_status="Current" THEN id END)*100)
/
COUNT(id) AS Good_loan_percentage
FROM financial_loan_data;


#Good loan application
SELECT COUNT(id) AS Good_Loan_Applications 
FROM financial_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


#Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_loan_funded_amount
FROM financial_loan_data
WHERE loan_status = "Fully Paid" OR loan_status="Current";


#Good Loan Amount Received
SELECT SUM(total_payment) AS Good_loan_amount_received
FROM financial_loan_data
WHERE loan_status = "Fully Paid" OR loan_status="Current";


#Bad Loan Percentage
SELECT 
(COUNT(CASE WHEN loan_status = "Charged Off" THEN ID END)*100)
/
COUNT(id) AS BAD_LOAN_PERCENTAGE
FROM financial_loan_data;


#Bad Loan Applications
SELECT COUNT(id) AS Bad_loan_application
FROM financial_loan_data
WHERE loan_status="Charged Off";


#Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_loan_funded_amount
FROM financial_loan_data
WHERE loan_status="Charged Off";


#Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_loan_amount_received
FROM financial_loan_data
WHERE loan_status="Charged Off";


#LOAN STATUS

SELECT 
    MONTH(STR_TO_DATE(issue_date, '%Y-%m-%d')) AS Month_Number,
    MONTHNAME(STR_TO_DATE(issue_date, '%Y-%m-%d')) AS Month_Name,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY MONTH(STR_TO_DATE(issue_date, '%Y-%m-%d')),
MONTHNAME(STR_TO_DATE(issue_date, '%Y-%m-%d'))
ORDER BY MONTH(STR_TO_DATE(issue_date, '%Y-%m-%d'));


#STATE 
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY address_state
ORDER BY COUNT(id) desc;


#TERM
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY term
ORDER BY term;


#EMPLOYEE LENGHT
SELECT 
	emp_length,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY emp_length
ORDER BY COUNT(id) DESC;


#PURPOSE
SELECT 
	purpose,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY purpose
ORDER BY COUNT(id) DESC;


#HOME OWNERSHIP
SELECT 
	home_ownership,
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan_data
GROUP BY home_ownership
ORDER BY COUNT(id) DESC;
