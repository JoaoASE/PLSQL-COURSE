--Primeira procedure

CREATE PROCEDURE incluir_segmercado
(p_ID IN NUMBER, p_DESCRICAO IN VARCHAR2)
IS

BEGIN
    INSERT INTO SEGMERCADO(ID ,DESCRICAO) VALUES (p_ID, UPPER(p_DESCRICAO));
    COMMIT;
END;

EXECUTE incluir_segmercado(4, 'Farmacia');
