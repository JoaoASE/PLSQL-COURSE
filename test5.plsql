--Efeito reverso: gravar conteúdo já da tabela na variável/parâmetro

SET SERVEROUTPUT ON;

DECLARE

    v_ID  SEGMERCADO.ID%type := 3;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type;

BEGIN
    SELECT descricao INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID;
    dbms_output.put_line(v_DESCRICAO);
END;
