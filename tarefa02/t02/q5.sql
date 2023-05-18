CREATE OR REPLACE FUNCTION calcular_atraso_projeto(datainicio DATE, dataconclusao DATE) RETURNS INTEGER AS $$
DECLARE
   resultado VARCHAR;
   diferenca_dias INTEGER;
begin
	if dataconclusao is null then
		SELECT (datainicio - CURRENT_DATE) INTO diferenca_dias; 
	else
    	SELECT (datainicio - dataconclusao) INTO diferenca_dias; 
   	end if;
   
    RETURN diferenca_dias;
END;
$$ LANGUAGE plpgsql;

SELECT calcular_atraso_projeto(p.datainicio, p.dataconclusao) FROM projeto p  