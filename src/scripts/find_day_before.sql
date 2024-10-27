--Bugün günlerden pazar ise 169 gün öncesi hangi gündür?

DECLARE
    wbugun varchar2(20);
    wmod number;
    wgun VARCHAR2(20);
BEGIN
    wbugun:= to_char(sysdate,'day'); --Sistem tarihinin gün ismini alan fonksiyondur.
    wmod:= mod(169,7);
    wgun:= to_char(sysdate - wmod, 'day');
    dbms_output.put_line('Bugün '|| wbugun || 'ise 169 gün öncesi ' || wgun || ' günüdür.');
END;

