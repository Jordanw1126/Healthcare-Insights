--CLEANING DATA

--Backup data 
CREATE TABLE healthcare_data_backup AS
SELECT *
FROM healthcare_data;

-- Removing columns that are not needed
ALTER TABLE healthcare_data_backup
DROP COLUMN room_number,
DROP COLUMN doctor,
DROP COLUMN hospital;


---Fix capitalization in name column
UPDATE healthcare_data_backup
SET name = INITCAP(name);

select name
from healthcare_data_backup;

--Removing titles from names
UPDATE healthcare_data_backup
SET Name = TRIM(
            REPLACE(
				REPLACE(
                	REPLACE(
                    	REPLACE(
                        	REPLACE(
                            	REPLACE(Name, 'Mrs. ', ''),
                       	 'Md', ''),
                   	 'Dds', ''),
               	 'Dr. ', ''),
           	 'Phd', ''),
			'Mr.', '')
          );
select *
from healthcare_data_backup;