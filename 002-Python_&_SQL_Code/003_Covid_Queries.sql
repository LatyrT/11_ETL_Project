
----------------------------------------
--- QUERIES
----------------------------------------

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



