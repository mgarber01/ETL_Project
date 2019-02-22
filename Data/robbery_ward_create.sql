

INSERT INTO `chicago_staging`.`robbery_ward`
SELECT 
		ward ,
		COUNT(*) AS 'RobberyCount' 
    
        FROM chicago_staging.crime_ward as cw
WHERE cw._primary_decsription = 'ROBBERY'

GROUP BY ward 


