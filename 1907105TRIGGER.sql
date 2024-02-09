

CREATE OR REPLACE TRIGGER trig
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  
  DBMS_OUTPUT.PUT_LINE('New order is being inserted');

  UPDATE product SET price = price * 1.1 WHERE product_id = :NEW.product_id;
END;
/
INSERT INTO orders (Buyer_ID, Order_ID, Product_ID, Quantity, Product_status, order_date)
VALUES (1, 1, 'S101', 5, 'Pending', SYSDATE);

CREATE OR REPLACE TRIGGER update_order_date
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    :NEW.order_date := SYSDATE;
END;
/
CREATE OR REPLACE TRIGGER update_payments_date
BEFORE INSERT ON payment
FOR EACH ROW
BEGIN
    :NEW.payment_date := SYSDATE;
END;
/



