--Rastgele tarih farký
DECLARE
    v_date1 DATE;
    v_date2 DATE;
    v_boolean BOOLEAN;
BEGIN
    v_date1:= TRUNC(sysdate) + TRUNC(dbms_random.value(-1000,1000));
    v_date2:= TRUNC(sysdate) + TRUNC(dbms_random.value(-1000,1000));
    
    v_boolean := v_date1 > v_date2;
    
    IF v_boolean THEN
        dbms_output.put('Birinci tarih ikinciden büyük!');
        
    ELSE
        dbms_output.put('Ýkinci tarih birinciden büyük! ');

    END IF;
    dbms_output.put_line(TO_CHAR(v_date1,'DD/MM/YYYY') ||' '|| TO_CHAR(v_date2,'DD/MM/YYYY'));

END;
