-- https://school.programmers.co.kr/learn/courses/30/lessons/299308
-- 분기별 분화된 대장균의 개체 수 구하기

SELECT
    CASE
        WHEN id IN (1, 3) THEN '1Q'
        WHEN id IN (2, 4) THEN '2Q'
        WHEN id = 5 THEN '3Q'
        ELSE '4Q'
        END AS QUARTER,
    COUNT(*) AS ECOLI_COUNT
FROM ECOLI_DATA
GROUP BY QUARTER
ORDER BY QUARTER;