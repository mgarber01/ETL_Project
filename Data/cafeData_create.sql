
INSERT INTO chicago_staging.cafeData
SELECT 
cl.*,
pz.`2010 Census Population` ,
CASE 
	WHEN ISNULL(cw.RobberyCount) THEN 0
    
    ELSE cw.RobberyCount
    END AS 'RobberCount'
 

FROM chicago_staging.cafe_list as cl 
INNER JOIN chicago_staging.pop_zip as pz  ON pz.`Zip Code ZCTA` = cl.`ZipCode` 
LEFT OUTER JOIN chicago_staging.robbery_ward as cw ON cw.WARD = cl.ward


