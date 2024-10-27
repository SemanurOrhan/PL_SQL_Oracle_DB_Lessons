--Data types karþýlaþtýrmalarý
DECLARE
    l_value1 CHAR(20);
    l_value2 VARCHAR2(20);

BEGIN
    l_value1:= 'Oracle';
    l_value2 :='Oracle';
    dbms_output.put_line('value1:'|| l_value1 ||' Hafýzadaki uzunluk: '|| LENGTH(l_value1));
    dbms_output.put_line('value2:'|| l_value2 ||' Hafýzadaki uzunluk: '|| LENGTH(l_value2));
END;
/
--Performans karþýlaþtýrmasý
DECLARE
    v_number NUMBER:=0;
    v_integer INTEGER:=0;
    v_pls_integer PLS_INTEGER :=0;
    v_binary_integer BINARY_INTEGER:=0;
    v_simple_integer SIMPLE_INTEGER:=0;
    v_baslangic NUMBER;
    v_tekrar NUMBER := 10000000;
BEGIN
    v_baslangic := dbms_utility.get_time;
    
    FOR i IN 1 .. v_tekrar LOOP
        v_number:= v_number + 1;
    END LOOP;
    dbms_output.put_line('Number:'||(dbms_utility.get_time - v_baslangic)||' milisecond');
    
    FOR i IN 1 .. v_tekrar LOOP
        v_integer:= v_integer + 1;
    END LOOP;
    dbms_output.put_line('Integer:'||(dbms_utility.get_time - v_baslangic)||' milisecond');

    FOR i IN 1 .. v_tekrar LOOP
        v_pls_integer:= v_pls_integer + 1;
    END LOOP;
    dbms_output.put_line('Pls Integer:'||(dbms_utility.get_time - v_baslangic)||' milisecond');
    
    FOR i IN 1 .. v_tekrar LOOP
        v_simple_integer:= v_simple_integer + 1;
    END LOOP;
    dbms_output.put_line('Simple Integer:'||(dbms_utility.get_time - v_baslangic)||' milisecond');
 
    FOR i IN 1 .. v_tekrar LOOP
        v_binary_integer:= v_binary_integer + 1;
    END LOOP;
    dbms_output.put_line('Binary Integer:'||(dbms_utility.get_time - v_baslangic)||' milisecond');

END;