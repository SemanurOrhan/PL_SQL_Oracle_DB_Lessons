--%type

DECLARE
    vcustomer_id     CUSTOMERS.customer_id%TYPE;
    vname            CUSTOMERS.name%TYPE;
    vaddress         CUSTOMERS.address%TYPE;
    vwebsite         CUSTOMERS.website%TYPE;
    vcredit_limit    CUSTOMERS.credit_limit%TYPE; 
BEGIN
    SELECT customer_id, name, address, website,credit_limit
    INTO vcustomer_id, vname, vaddress, vwebsite, vcredit_limit
    FROM CUSTOMERS WHERE customer_�d=1;
    
    DBMS_OUTPUT.put('M��teri no: '||vcustomer_id||' M��teri ismi: '||vname);
    DBMS_OUTPUT.put(' Adres: '||vaddress||' Website: '||vwebsite);
    DBMS_OUTPUT.put_l�ne(' Kredi limiti: '||vcredit_limit);

END;
/
--%ROWTYPE
DECLARE
    vcust_rec CUSTOMERS%ROWTYPE;
    
BEGIN
    SELECT customer_id, name, address, website,credit_limit
    INTO vcust_rec
    FROM CUSTOMERS WHERE customer_�d=1;
    
    DBMS_OUTPUT.put('M��teri no: '||vcust_rec.customer_id||' M��teri ismi: '||vcust_rec.name);
    DBMS_OUTPUT.put(' Adres: '||vcust_rec.address||' Website: '||vcust_rec.website);
    DBMS_OUTPUT.put_l�ne(' Kredi limiti: '||vcust_rec.credit_limit);
END;