-- GREEN PAGES

--Count(*) yazınca NULL olan değerleri de dahil ederek tüm satırları sayar

SELECT
	count(*) AS total_customers
FROM
	customers 

SELECT count (customer_id) AS total_customers
FROM customers 

SELECT count(score) AS total_customers
FROM customers c 

SELECT * FROM customers c 

SELECT * FROM customers c WHERE country = 'USA';

-- CONCAT: SQL'de bir veya daha fazla karakter dizisini birleştirmek
-- veya birleşik bir karakter dizisi oluşturmak için kullanılır.


SELECT * FROM customers c 
--------------------------------------------------------

--SORU: Customers tablosunda First_name ve last_name i, araya tire (-) işareti
--ekleyerek combine edin

SELECT 
	CONCAT(first_name, ' - ', last_name) AS cust_full_name 

FROM customers 

-- UPPER - LOWER: SQL'de metin sütunlarındaki karakterleri büyük harfe (UPPER) veya
-- küçük harfe (LOWER) dönüştürmek için kullanılır
-- FIRST name i büyük harflere, last name i küçük harflere dönüştürelim

SELECT 
	UPPER(first_name) AS upper_first_name, 
	LOWER(last_name) AS lower_last_name  

FROM customers c 


-- TRIM: SQL'de bir metin veya karakter dizisinin başındaki
-- ve/veya sonundaki boşlukları (veya belirli karakterleri) kaldırmak için kullanılır.

--LENGTH: bir metin veya karakter dizisinin uzunluğunu (karakter sayısını) döndüren bir fonksiyondur.

SELECT 
	last_name,
	LENGTH(last_name) AS len_lastname

FROM customers c 


SELECT 
	last_name,
	LENGTH(last_name) AS len_lastname, --  trim öncesi uzunluk
	TRIM(last_name) AS clean_last_name,  -- trim işlemi
	LENGTH(TRIM(last_name)) AS clean_len_lastname -- trim sonrası uzunluk

FROM customers c 

--SUBSTRING: SQL'de bir metin veya karakter dizisinden belirli bir alt dizesini almak için kullanılır.
-- Kelimenin  belli bir bölümünü almak için


SELECT 
	last_name,
	substring(last_name, 2,3) 


FROM customers c 


--REPLACE: String ifadeleri verilen yenisi ile değiştirmek için kullanılır
--SORU: Soru: Customers tablosundaki müşterilerin country alanında bulunan "USA"
--değerlerini "United States" olarak güncellemek istiyoruz

SELECT 
	first_name,
	last_name,
	REPLACE (country, 'Germany', 'Deutschland') AS country,
	score
	
FROM customers c 
		

--REVERSE : String ifadeyi ters çevirir
--SORU: customers daki first_name i ters çevirerek görüntüleyin
SELECT
	customer_id,	
	REVERSE(first_name) AS reversed_name,
	last_name ,
	score
FROM customers c


-REPLACE ve REVERSE birarada kullanımı

--SORU: Employee tablosundakilerin isimlerini tersine çevirin ve 
-- içindeki 'a' harflerini '@' işareti ile değiştirin.

SELECT 
	emp_id,
	REPLACE(REVERSE(first_name), 'a', '@')  AS replace_reversed_name,
	last_name,
	salary
FROM employees e 


-- INSERT örnek

SELECT * FROM customers c 

INSERT INTO customers VALUES (6, 'Anna', 'Nixon', 'UK', NULL);

INSERT INTO customers 
	(customer_id, first_name, last_name) 
VALUES 
	(7, 'Max', 'Lang');




UPDATE customers 
SET country= 'Germany'
WHERE customer_id= 6


SELECT * FROM customers c 


UPDATE customers 
SET country= 'USA',
score= 100
WHERE customer_id= 6


INSERT INTO customers VALUES ((SELECT MAX(customer_id) +1 FROM customers), 'Anna', 'Karanina', 'Rusia', NUll);



-- UPDATE Komutu: Mevcut kayıtları güncellemek için kullanılır.
-- Team Lead:
-- 59 ID’li personeli Almanya ya gönderip maaşına da 100 Birim zam yapıldı. Veritabanındaki gerekli modifikasyonu yapalım


















































































