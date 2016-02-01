-- Table products_suppliers script
-- Original code: https://www3.ntu.edu.sg/home/ehchua/programming/sql/MySQL_Beginner.html

CREATE TABLE products_suppliers (
         productID   INT UNSIGNED  NOT NULL,
         supplierID  INT UNSIGNED  NOT NULL,
                     -- Same data types as the parent tables
         PRIMARY KEY (productID, supplierID),
                     -- uniqueness
         FOREIGN KEY (productID)  REFERENCES products  (productID),
         FOREIGN KEY (supplierID) REFERENCES suppliers (supplierID)
       );

INSERT INTO products_suppliers VALUES (2001, 501), (2002, 501),
       (2003, 501), (2004, 502), (2001, 503);

ALTER TABLE products DROP FOREIGN KEY products_ibfk_1;

ALTER TABLE products DROP supplierID;
