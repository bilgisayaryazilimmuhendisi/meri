# meri
//////////////////

update uygulama.kullanici set AD=concat(ucase(substring(AD,1,1)), lower(substring(AD,2)));

///////////


update uygulama.kullanici set AD = concat(ucase(substring(AD,1,1))+lower(substring(AD,2,locate(' ',AD)-1))+upper(substring(AD,locate(' ',AD)+1,1))+lower(substring(AD,locate(' ',AD)+2,80)));




////////////
CREATE FUNCTION CAP_FIRST (input VARCHAR(255))

RETURNS VARCHAR(255)

DETERMINISTIC

BEGIN
	DECLARE len INT;
	DECLARE i INT;

	SET len   = CHAR_LENGTH(input);
	SET input = LOWER(input);
	SET i = 0;

	WHILE (i < len) DO
		IF (MID(input,i,1) = ' ' OR i = 0) THEN
			IF (i < len) THEN
				SET input = CONCAT(
					LEFT(input,i),
					UPPER(MID(input,i + 1,1)),
					RIGHT(input,len - i - 1)
				);
			END IF;
		END IF;
		SET i = i + 1;
	END WHILE;

	RETURN input;
END;
///////////////////////////////////////
