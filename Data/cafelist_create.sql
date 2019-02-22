
CREATE TABLE cafe_list
SELECT 
	#`cafe_permit`.`PERMIT NUMBER`,
    #`cafe_permit`.`ACCOUNT NUMBER`,
    #`cafe_permit`.`SITE NUMBER`,
    `cafe_permit`.`LEGAL NAME`,
    `cafe_permit`.`DOING BUSINESS AS NAME`,
    #`cafe_permit`.`ISSUED DATE`,
    #`cafe_permit`.`EXPIRATION DATE`,
    #`cafe_permit`.`PAYMENT DATE`,
    `cafe_permit`.`ADDRESS`,
    #`cafe_permit`.`ADDRESS NUMBER START`,
    #`cafe_permit`.`ADDRESS NUMBER`,
    #`cafe_permit`.`STREET DIRECTION`,
    `cafe_permit`.`STREET`,
    `cafe_permit`.`STREET TYPE`,
    `cafe_permit`.`CITY`,
    `cafe_permit`.`STATE`,
    CAST(`cafe_permit`.`ZIP CODE` AS signed) AS ZipCode,
    `cafe_permit`.`WARD`,
    #`cafe_permit`.`PRECINCT`,
    #`cafe_permit`.`WARD PRECINCT`,
    #`cafe_permit`.`POLICE DISTRICT`,
    `cafe_permit`.`LATITUDE`,
    `cafe_permit`.`LONGITUDE`,
    `cafe_permit`.`LOCATION`

FROM `chicago_staging`.`cafe_permit`;
