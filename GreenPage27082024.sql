-- GREEN PAGES

SELECT  * 
FROM employees AS e 

SELECT 
c.customer_id
FROM customers c 

SELECT  salary, salary*0.1 AS bonus  -- maaşın %10 u
FROM employees e 

-- GREEN Pages DB

-- ALIAS Ugulaması

SELECT *
FROM employees AS e --NOT: AS kelimesi yazılmayaiblir

SELECT 
c.customer_id 
FROM customers c 

SELECT salary, salary*0.1 AS bonus --AS kelimesi kullanılmayaiblir
FROM employees e 

CREATE TABLE workers(
calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50)
);
INSERT INTO workers VALUES(123456789, 'Ali Can', 'Istanbul'); 
INSERT INTO workers VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO workers VALUES(345678901, 'Mine Bulut', 'Izmir');
SELECT * FROM workers;

/*
1-calisan_id sutun ismini id olarak degistirelim
2-calisan_isim sutun ismini isim olarak degistirelim
3-workers olan tablo ismini w olarak degistirelim*/

SELECT calisan_isim AS isim
FROM workers w


-- WHERE komutları

SELECT *
FROM customers c 

-- sadece Germany olanları getir

SELECT *
FROM customers c 
WHERE country = 'Germany'

-- score değeri 500 den büyük olanları getir

SELECT *
FROM customers c 
WHERE score > 500


SELECT *
FROM customers c 
WHERE score < 500

SELECT *
FROM customers c 
WHERE country != 'Germany'

SELECT *
FROM customers c 
WHERE country <> 'Germany'
























































