-- 코드를 작성해주세요
SELECT 
    YEAR(A.DIFFERENTIATION_DATE) AS YEAR,
    B.YEAR_DIV-A.SIZE_OF_COLONY AS YEAR_DEV,
    A.ID
FROM 
    ECOLI_DATA A, 
    (SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS YEAR_DIV
        FROM ECOLI_DATA 
        GROUP BY YEAR
    ) B
WHERE YEAR(A.DIFFERENTIATION_DATE)=B.YEAR
ORDER BY 1, 2
;
