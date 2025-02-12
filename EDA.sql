---DATA EXPLORATION 
SELECT * 
FROM healthcare_data_backup;

SELECT 
	MIN(age) AS MIN_Age,
	MAX(age) AS Max_Age,
	AVG(billing_amount) AS Avg_Billing
FROM healthcare_data_backup;

