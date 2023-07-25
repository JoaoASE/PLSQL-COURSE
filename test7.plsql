--ESTRUTURA CONDICIONAL

CREATE OR REPLACE PROCEDURE INCLUIR_CLIENTE
  (p_id in cliente.id%type,
   p_razao_social in cliente.razao_social%type,
   p_CNPJ cliente.CNPJ%type,
   p_segmercado IN cliente.segmercado_id%type,
   p_faturamento_previsto IN cliente.faturamento_previsto%type)
IS
  v_categoria cliente.categoria%type;

BEGIN 

IF p_faturamento_previsto <10000 THEN
  v_categoria := 'PEQUENO';
  ELIF p_faturamento_previsto < 50000 THEN
  v_categoria := 'MEDIO';
  ELIF p_faturamento_previsto < 100000 THEN 
  v_categoria := 'MEIO GRANDE';
  ELSE
  v_cagegoria := 'GRANDE';
  END IF;

INSERT INTO cliente VALUES (p_id, UPPER(p_razao_social), p_CNPJ,p_segmercado_id, SYSDATE, p_faturamento_previsto, v_categoria);
    COMMIT;

END;
