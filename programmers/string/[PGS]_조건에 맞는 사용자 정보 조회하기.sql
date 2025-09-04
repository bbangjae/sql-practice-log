-- https://school.programmers.co.kr/learn/courses/30/lessons/164670
-- 조건에 맞는 사용자 정보 조회하기

SELECT
    U.USER_ID,
    U.NICKNAME,
    CONCAT(U.CITY, ' ', U.STREET_ADDRESS1, ' ', U.STREET_ADDRESS2) AS '전체주소',
    CONCAT(
            SUBSTRING(U.TLNO, 1, 3), '-',
            SUBSTRING(U.TLNO, 4, 4), '-',
            SUBSTRING(U.TLNO, 8)
    ) AS '전화번호'
FROM
    USED_GOODS_USER AS U
        JOIN
    (SELECT WRITER_ID
     FROM USED_GOODS_BOARD
     GROUP BY WRITER_ID
     HAVING COUNT(WRITER_ID) >= 3) AS B
    ON
        U.USER_ID = B.WRITER_ID
ORDER BY U.USER_ID DESC;