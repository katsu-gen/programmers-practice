-- https://programmers.co.kr/learn/courses/30/lessons/59045

SELECT 
    ANIMAL_OUTS.ANIMAL_ID
    , ANIMAL_OUTS.ANIMAL_TYPE
    , ANIMAL_OUTS.NAME
FROM 
    ANIMAL_OUTS
    LEFT JOIN ANIMAL_INS 
        ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
WHERE 
    (ANIMAL_OUTS.SEX_UPON_OUTCOME LIKE '%Spayed%' 
        OR ANIMAL_OUTS.SEX_UPON_OUTCOME LIKE 'Neutered%')
    AND ANIMAL_INS.SEX_UPON_INTAKE NOT LIKE '%Spayed%' 
    AND ANIMAL_INS.SEX_UPON_INTAKE NOT LIKE '%Neutered%'
