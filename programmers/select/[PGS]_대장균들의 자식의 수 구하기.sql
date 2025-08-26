-- https://school.programmers.co.kr/learn/courses/30/lessons/299305
-- 대장균들의 자식의 수 구하기

SELECT ED1.ID, COUNT(ED2.PARENT_ID) CHILD_COUNT
FROM ECOLI_DATA ED1
    LEFT JOIN ECOLI_DATA ED2
        ON ED2.PARENT_ID = ED1.ID
GROUP BY ED1.ID