---	Trigger que impida que un estudiante 
--sea matriculado varias veces en una misma actividad programada.
CREATE OR REPLACE FUNCTION TG_IMPIDEMATRICULA() RETURNS TRIGGER
AS
$$
	DECLARE
		NMATRICULAS INT;
		MAXIMO INT := 1;
	BEGIN
		SELECT COUNT(*) INTO NMATRICULAS 
		FROM MATRICULACION MAT INNER JOIN REG_NINO NINO ON NINO.ID_ALUMNO = MAT.ID_ALUMNO
		INNER JOIN PROGRAMA  PRG ON PRG.IDMATRICULA = MAT.IDMATRICULA
		WHERE MAT.ID_ALUMNO = NEW.ID_ALUMNO;
		IF(NMATRICULAS >= MAXIMO) THEN
			RAISE EXCEPTION 'SOLO SE PUEDE MATRICULAR UNA VEZ POR PROGRAMA';
		END IF;
		RETURN NEW;
	END;
	$$
	LANGUAGE PLPGSQL;
	
CREATE TRIGGER TG_IMPIDEMATRICULA
BEFORE
INSERT ON MATRICULACION
FOR EACH ROW
EXECUTE PROCEDURE TG_IMPIDEMATRICULA();
