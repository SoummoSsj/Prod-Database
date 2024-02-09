--diplay
SET SERVEROUTPUT ON

DECLARE
    buyer_id     buyerinfo.buyer_id%TYPE;
    buyer_name   buyerinfo.buyer_NAME%TYPE;
BEGIN
    SELECT buyer_id, buyer_name
      INTO buyer_id, buyer_name
      FROM buyerinfo
     WHERE buyer_id = 7;

    DBMS_OUTPUT.put_line (
        'BUYER_id: ' || buyer_id || ' BUYER_name: ' || BUYER_name);
END;
/
--insert
SET SERVEROUTPUT ON

DECLARE
    buyer_id        buyerinfo.buyer_id%TYPE := 14;
    buyer_name      buyerinfo.buyer_NAME%TYPE := 'Shreya';
    Buyer_Address   buyerinfo.buyer_address%TYPE := 'Khulna';
    Buyer_email     buyerinfo.buyer_email%TYPE := 'shreya@gmail.com';
    Buyer_Phone     buyerinfo.buyer_phone%TYPE := '01999999999';
BEGIN
    INSERT INTO buyerinfo
         VALUES (buyer_id,
                 buyer_name,
                 Buyer_Address,
                 Buyer_email,
                 Buyer_Phone);

    DBMS_OUTPUT.put_line (
           'BUYER_id: '
        || buyer_id
        || ' BUYER_name: '
        || BUYER_name
        || ' Buyer_Address'
        || Buyer_Address
        || ' Buyer_email '
        || Buyer_email
        || ' Buyer_Phone '
        || Buyer_Phone);
END;
/

--Row type taken values from table and stored using rowtype 
SET SERVEROUTPUT ON

DECLARE
    product_row   product%ROWTYPE;
BEGIN
    SELECT product_id,
           product_type,
           product_name,
           price,
           product_brand
      INTO product_row.product_id,
           product_row.product_type,
           product_row.product_name,
           product_row.price,
           product_row.product_brand
      FROM product
     WHERE product_id = 'S102';

    DBMS_OUTPUT.put_line (
           'Product ID: '
        || product_row.product_id
        || ' Product Name: '
        || product_row.product_name
        || ' TYPE: '
        || product_row.product_type
        || ' Price: '
        || product_row.price
        || ' Brand: '
        || product_row.product_brand);
END;
/

--viewing all info from buyerinfo using cursor and rowcount will give us total buyer number

SET SERVEROUTPUT ON

DECLARE
    CURSOR info_cursor IS SELECT * FROM buyerinfo;

    buyer_row   buyerinfo%ROWTYPE;
BEGIN
    OPEN info_cursor;

    FETCH info_cursor
        INTO buyer_row.buyer_id,
             buyer_row.buyer_name,
             buyer_row.buyer_address,
             buyer_row.buyer_email,
             buyer_row.buyer_phone;

    WHILE info_cursor%FOUND
    LOOP
        DBMS_OUTPUT.put_line (
               'BUYER_id: '
            || buyer_row.buyer_id
            || ' BUYER_name: '
            || buyer_row.buyer_name
            || ' ADDRESS: '
            || buyer_row.buyer_address
            || ' EMAIL: '
            || buyer_row.buyer_email
            || ' EMAIL: '
            || buyer_row.buyer_phone);
        DBMS_OUTPUT.put_line ('Total Student: ' || info_cursor%ROWCOUNT);

        FETCH info_cursor
            INTO buyer_row.buyer_id,
                 buyer_row.buyer_name,
                 buyer_row.buyer_address,
                 buyer_row.buyer_email,
                 buyer_row.buyer_phone;
    END LOOP;

    CLOSE info_cursor;
END;
/

--for loop to find sum of payment amount of same payment id
DECLARE
    total_payment_amount   payment.payment_amount%TYPE;
BEGIN
    
    FOR p IN (SELECT DISTINCT payment_id
                FROM payment)
    LOOP
       
        total_payment_amount := 0;

       
        FOR a IN (SELECT payment_amount
                    FROM payment
                   WHERE payment_id = p.payment_id)
        LOOP
            total_payment_amount := total_payment_amount + a.payment_amount;
        END LOOP;

        -- Display
        DBMS_OUTPUT.put_line (
               'Payment ID: '
            || p.payment_id
            || ', Total Payment Amount: '
            || total_payment_amount);
    END LOOP;
END;
/

--arrayextend for loop and while loop displaying all buyer name

DECLARE
    counter   NUMBER;
    names     buyerinfo.buyer_name%TYPE;

    TYPE namesARRAY IS VARRAY (11) OF buyerinfo.buyer_name%TYPE;

    A_NAME    namesARRAY := namesARRAY ();
BEGIN
    counter := 1;

    FOR x IN 1 .. 11
    LOOP
        SELECT buyer_name
          INTO names
          FROM buyerinfo
         WHERE buyer_id = x;

        A_NAME.EXTEND ();
        A_NAME (counter) := names;
        counter := counter + 1;
    END LOOP;

    counter := 1;

    WHILE counter <= A_NAME.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE (A_NAME (counter));
        counter := counter + 1;
    END LOOP;
END;
/

--same as before without extend with for loop and while loop

DECLARE
    counter   NUMBER := 1;
    names     buyerinfo.buyer_name%TYPE;

    TYPE namesARRAY IS VARRAY (11) OF buyerinfo.buyer_name%TYPE;

    A_NAME    namesARRAY
                  := namesARRAY ('a',
                                 'b',
                                 'c',
                                 'd',
                                 'e',
                                 'f',
                                 'g',
                                 'h',
                                 'i',
                                 'j',
                                 'k');
BEGIN
    counter := 1;

    FOR x IN 1 .. 11
    LOOP
        SELECT buyer_name
          INTO names
          FROM buyerinfo
         WHERE buyer_id = x;

        A_NAME (counter) := names;
        counter := counter + 1;
    END LOOP;

    counter := 1;

    WHILE counter <= A_NAME.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE (A_NAME (counter));
        counter := counter + 1;
    END LOOP;
END;
/

--labeling products based on price using if else
DECLARE
    pname    product.product_name%TYPE;
    price    product.price%TYPE;
    plabel   VARCHAR2 (20);

    CURSOR products IS SELECT product_name, price FROM product;
BEGIN
    OPEN products;


    FETCH products INTO pname, price;


    WHILE products%FOUND
    LOOP
        IF price <= 1000
        THEN
            plabel := 'Low Price';
        ELSIF price > 1000 AND price <= 3000
        THEN
            plabel := 'Medium Price';
        ELSE
            plabel := 'High Price';
        END IF;


        DBMS_OUTPUT.put_line (
            'Product Name: ' || pname || ', Label: ' || plabel);


        FETCH products INTO pname, price;
    END LOOP;


    CLOSE products;
END;
/

--procedure to see if buyer exists
CREATE OR REPLACE PROCEDURE check_buyer_existence (
    nam       IN     buyerinfo.buyer_name%TYPE,
    existss      OUT BOOLEAN)
AS
    countss   INTEGER;
BEGIN
    SELECT COUNT (*)
      INTO countss
      FROM buyerinfo
     WHERE buyer_name = nam;

    IF countss > 0
    THEN
        existss := TRUE;
    ELSE
        existss := FALSE;
    END IF;
END;
/

DECLARE
    existss   BOOLEAN;
BEGIN
    check_buyer_existence ('Joy', existss);

    IF existss
    THEN
        DBMS_OUTPUT.PUT_LINE ('Buyer exists.');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Buyer does not exist.');
    END IF;
END;
/


--function to find top 3 buyer based on price
CREATE OR REPLACE FUNCTION top_buyers
    RETURN SYS_REFCURSOR
IS
    rcursor   SYS_REFCURSOR;
BEGIN
    OPEN rcursor FOR
        SELECT b.buyer_name
          FROM (  SELECT m.buyer_id, MAX (p.payment_amount) AS max_payment
                    FROM managements m
                         JOIN payment p ON m.payment_id = p.payment_id
                GROUP BY m.buyer_id
                ORDER BY max_payment DESC
                   FETCH FIRST 3 ROWS ONLY) top_buyers
               JOIN buyerinfo b ON top_buyers.buyer_id = b.buyer_id;

    RETURN rcursor;
END;
/

DECLARE
    r       SYS_REFCURSOR;
    buyer_name   buyerinfo.buyer_name%TYPE;
BEGIN
    r := top_buyers ();


    FETCH r INTO buyer_name;


    WHILE r%FOUND
    LOOP
        DBMS_OUTPUT.PUT_LINE ('Buyer Name: ' || buyer_name);


        FETCH r INTO buyer_name;
    END LOOP;


    CLOSE r;
END;
/
