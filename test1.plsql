SET SERVEROUTPUT ON;
DECLARE 
    v_test VARCHAR2(15);
    --DECLARAÇÃO
BEGIN
    v_test := 'Variable';
    --ATRIBUIÇÃO 
    DBMS_OUTPUT.PUT_LINE(v_test);
    --COMANDO DE PRINTAR
END;


--PRINT NA TELA A VARIAVEL
