
---DROP TABLES
DROP TABLE IF EXISTS UNEMPLOYMENT;
DROP TABLE IF EXISTS cases_count;
DROP TABLE IF EXISTS mortality_count;
DROP TABLE IF EXISTS recovered_count;
DROP TABLE IF EXISTS testing_count;


----------------------------------------
--- UNEMPLOYMENT TABLE
----------------------------------------
CREATE TABLE UNEMPLOYMENT (
	REC_ID 			VARCHAR (100)	, 	
	SEX 			VARCHAR (100)	,
	AGE_GROUP 		VARCHAR (100)	, 
	COUNT_PERCENT 	DECIMAL		 	, 
	REPORTING_DATE 	DATE			, 
	CATEGORY 		VARCHAR (100)
);

ALTER TABLE UNEMPLOYMENT
ADD PRIMARY KEY (REC_ID);



--------------------
----- PANDEMIC DATA
--------------------
CREATE TABLE cases_count (
    id_num      VARCHAR     PRIMARY KEY,
    sex         VARCHAR     NOT NULL,
    date        DATE        NOT NULL,
    cases_count INT         NOT NULL,
    category    VARCHAR     NOT NULL
);



CREATE TABLE mortality_count (
    id_num      VARCHAR     PRIMARY KEY,
    sex             VARCHAR     NOT NULL,
    date            DATE        NOT NULL,
    mortality_count INT         NOT NULL,
    category        VARCHAR     NOT NULL
);



CREATE TABLE recovered_count (
    id_num      VARCHAR     PRIMARY KEY,
    province                VARCHAR     NOT NULL,
    date                    DATE        NOT NULL,
    cumulative_recovered    INT         NOT NULL,
    category                VARCHAR     NOT NULL
);



CREATE TABLE testing_count (
    id_num      VARCHAR     PRIMARY KEY,
    province            VARCHAR     NOT NULL,
    date                DATE        NOT NULL,
    cumulative_testing  INT         NOT NULL,
    category            VARCHAR     NOT NULL
);





SELECT * FROM UNEMPLOYMENT;
SELECT * FROM cases_count;
SELECT * FROM mortality_count;
SELECT * FROM recovered_count;
SELECT * FROM testing_count;




-----------
SELECT *
FROM CASES_COUNT AS C
INNER JOIN UNEMPLOYMENT AS U
ON C.DATE = U.REPORTING_DATE
WHERE U.SEX <> 'Both sexes'
AND U.CATEGORY = 'Percentage'
;



