-- https://school.programmers.co.kr/learn/courses/30/lessons/293259
-- [PGS]_잡은 물고기의 평균 길이 구하기

-- 코드를 작성해주세요
SELECT ROUND(AVG(
                     CASE
                         WHEN LENGTH IS NULL THEN 10
                         ELSE LENGTH
                     END
               ), 2) AS AVERAGE_LENGTH
FROM FISH_INFO