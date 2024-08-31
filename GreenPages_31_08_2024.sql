-- GREEN DB

SELECT * FROM customers c 

SELECT customer_id, first_name, last_name, country, score
FROM public.customers;

-- AND Operatörü:  WHERE ifadesi içinde birden fazla koşulu birleştirmek için kullanılır.
-- Bu ifade, tüm koşulların doğru olduğu satırları seçer.
-- Yani, AND ifadesiyle birleştirilen her bir koşulun sağlanması gereklidir.
-- Score 400 den küçük VE ülkesi Germany olanları getir.


SELECT * FROM customers 
WHERE country = 'Germany' AND score < 400


-- OR Operatörü: WHERE ifadesi içinde birden fazla koşulu birleştirmek için kullanılır.
-- OR ifadesi, belirtilen koşullardan en az birinin doğru olduğu satırları seçer.
-- Yani, herhangi bir koşulun sağlanması yeterlidir.
-- Ülkesi Germany olanları VEYA score 500 den küçük olanları getir.

SELECT * FROM customers 
WHERE country = 'Germany' or score < 500

SELECT * FROM customers 
WHERE country = 'Germany' or score < 800


	-- NOT: Bir koşulun tersini almak için kullanılır.
-- Bu ifade, belirtilen koşul doğru değilse satırları seçer.
-- NOT, WHERE ifadesinde, HAVING ifadesinde veya başka bir koşul ifadesinde kullanılabilir.
-- Score 400 den küçük olanları düşün ve tam tersini al:
	
	
	SELECT *
	FROM customers 
	WHERE NOT score < 400
	
	
-- Between Operatörü:  Bir field daki değerlerin belirli bir aralık içinde olup olmadığını kontrol etmek için kullanılır.
-- BETWEEN ifadesi, iki sınır değer belirterek bu değerler arasındaki (veya sınır değerler de dahil) satırları seçer.
-- Bu ifade, sayısal, tarihsel veya alfabetik aralıkları belirlemek için kullanılabilir.
-- Score degeri 100 ve 500 arasında olanları getir.
-- 100 ve 500 ikisi de dahildir.
	
	
	
	SELECT * FROM customers 
	WHERE score BETWEEN 100 AND 500
	
	
SELECT *
FROM customers c
WHERE score
BETWEEN 100 AND 500

--ALTERNATİF OLARAK:

SELECT *
FROM customers c
WHERE score >=100 AND score <=500


--SORU: Tüm customers içerisinde ID'si 1,2,5 olanları getir
SELECT *
FROM customers c
WHERE customer_id IN (1,2,5)
--IN yerine uzunca alttaki gibi yazılaiblirdi:
SELECT *
FROM customers c
WHERE customer_id =1
	OR customer_id =2
	OR customer_id =5
	
	
-- Like Kullanımı: SQL'de örüntü eşleşmesi yapmak için kullanılan bir operatördür.
-- Customers tablosundaki first_name fieldı içerisindeki kayıtlardan 'n' karakteri biten kayıtları getir.


SELECT *
	FROM customers c
	WHERE first_name LIKE '%n'	
	
SELECT *
	FROM customers c
	WHERE first_name LIKE '__r%'


-- Customers tablosundaki first_name fieldı içerisindeki kayıtlardan 'M' ile başlayan kayıtları getir.

	
SELECT *
	FROM customers c
	WHERE first_name LIKE 'M%'	
	
	
-- Customers tablosundaki first_name fieldı içerisindeki kayıtlardan içerisinde 'r' geçenleri getir.

SELECT *
	FROM customers c
	WHERE first_name LIKE '%r%'	
	


-- ILIKE Büyük/ küçük harf duyarlılığı olmayan aarama yapmak için kullanılır (no case sensitive)
--SORU:  customers" tablosunda, country sütununda "usa" kelimesini büyük/küçük harf duyarlılığı olmadan içeren müşterileri listeleyin.
	
SELECT *
FROM customers c
WHERE country ILIKE 'usa'
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	