--Bug�n g�nlerden Pazar ise 169 g�n �ncesi hangi g�nd�r?

CREATE OR REPLACE PROCEDURE gun_bul IS
    wbugun varchar2(20);
    wmod number;
    wgun VARCHAR2(20);
BEGIN
    wbugun:= to_char(sysdate,'day'); --Sistem tarihinin g�n ismini alan fonksiyondur.
    wmod:= mod(169,7);
    wgun:= to_char(sysdate - wmod, 'day');
    dbms_output.put_line('Bug�n '|| wbugun || 'ise 169 g�n �ncesi ' || wgun || ' g�n�d�r.');
END;

EXECUTE gun_bul;

--EXEC gun_bul;

/* BEGIN
    gun_bul;
END; */