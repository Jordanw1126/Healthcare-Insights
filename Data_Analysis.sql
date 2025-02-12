SELECT *
FROM healthcare_data_backup
---DATA ANALYSIS 

--Billing trends 
SELECT EXTRACT(YEAR FROM date_of_admisson) AS Year,
       SUM(billing_amount) AS Total_Billing
FROM healthcare_data_backup
GROUP BY Year
ORDER BY Year;

--- Admissions by Condition
SELECT medical_condition, COUNT(*) AS Admissions
FROM healthcare_data_backup 
GROUP BY medical_condition
ORDER BY Admissions DESC;

--- Comparative Analysis
SELECT insurance_provider,
	AVG(billing_amount) AS AVG_Billing
FROM healthcare_data_backup 
GROUP BY insurance_provider
ORDER BY AVG_Billing DESC;

SELECT admission_type, 
	AVG(billing_amount) AS AVG_Billing
FROM healthcare_data_backup 
GROUP BY admission_type
ORDER BY AVG_Billing DESC;