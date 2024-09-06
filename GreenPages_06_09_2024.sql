-- GREEN PAGES 06 - 09- 2024

-- DELETE


DELETE 
FROM customers  
WHERE customer_id IN (8)


SELECT * FROM customers c 

TRUNCATE  TABLE customers 


INSERT INTO customers (customer_id, first_name, last_name, country, score) VALUES
(1,'Maria', 'Cramer', 'Germany',350),
(2,'John','Steel','USA', 900),
(3,'Georg','Pipps', 'UK', 750),
(4,'Martin','Müller','Germany', 500),
(5,'Peter','Franken','USA', NULL);


SELECT * FROM customers c 

--ALTER TABLE Konusu
/* ALTER TABLE  tabloda ADD, MODIFY, veya DROP/DELETE COLUMNS
* islemleri icin kullanilir.
   ALTER TABLE ifadesi tablolari yeniden isimlendirmek
   (RENAME) icin de kullanilir. */

CREATE TABLE public.persons (  -- public sheması içinde yarat demek
id SERIAL PRIMARY KEY,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL UNIQUE
);

SELECT * FROM persons 

-- Persons tablosuna email diye bir field ekleyeniz.


ALTER TABLE persons 
ADD email varchar(20) NOT NULL

ALTER TABLE persons 
ADD adress varchar(100) NOT NULL 


ALTER TABLE persons 
DROP COLUMN adress


ALTER TABLE persons 
ALTER COLUMN phone TYPE varchar(20)


SELECT * FROM persons 


ALTER TABLE persons 
RENAME TO contacts


SELECT * FROM contacts


ALTER TABLE contacts 
RENAME COLUMN phone TO contact_number



SELECT * FROM contacts










































