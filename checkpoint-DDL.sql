 CREATE TABLE Product(
    Product_id VARCHAR2(20),
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK(NUMBER>0)
);
ALTER TABLE Product ADD CONSTRAINT PK_Product PRIMARY KEY (Product_id);


 CREATE TABLE Customer(
    Customer_id VARCHAR2(20),
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER 
 );

 ALTER TABLE Customer ADD CONSTRAINT PK_Customer PRIMARY KEY (Customer_id);


  CREATE TABLE Orders(
     Quantity NUMBER,
     Total_amount NUMBER,
    
 );

 ALTER TABLE Orders ADD CONSTRAINT FK_CustomerOrders FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id);
 ALTER TABLE Orders ADD CONSTRAINT FK_ProductOrders FOREIGN KEY (Product_id) REFERENCES Customer(Product_id);

ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE  ;


