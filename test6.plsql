--PRIMEIRA FUNCTION
CREATE OR REPLACE FUNCTION obter_descricao_segmercado
(p_ID IN segmercado.ID%type)
RETURN segmerccado.DESCRICAO%type
IS
  v_descricao segmercado.descricao%type;
  --variavel componente de trabalho
BEGIN
  SELECT DESCRICAO INTO v_DESCRICAO
  FROM segmercado
  WHERE ID = p_ID;
  RETURN v_DESCRICAO;
END;

--EXECUÇÃO DA FUNÇÃO

VARIABLE g_descricao varchar2(100)
EXECUTE : g_descricao := obter_descricao_segmercado(1)
PRINT g_descricao
