
-- Blue Pages

-- Mehmet Ozman'ın özlük bilgileri

SELECT * FROM personel p 
WHERE 
	ad= 'Mehmet'
	AND 
	soyad= 'Ozman'
	
	
	
-- Şirketimizde çalışıp, adı Mehmet veya Dilek olan kişilerin tam listesini istiyorum.
	
	--NOT: Sorguda parantez kullanılmadığı takdirde Operator onceliği olarak AND işlenir,
-- bu da sorgu sonucunu değiştirir

SELECT * FROM personel p 
WHERE 
	(ad= 'Mehmet' 
	OR  
	ad= 'Dilek')
	AND 
	maas > 1400
	
--Maaşı 1000 ile 2000 arasında olan bütün çalışanların id, ad, soyad ve maaş bilgilerini istiyorum. Liste maaş tutarına göre sıralanmış olsun.
	
SELECT id, ad, soyad, maas
FROM personel p 
	WHERE maas BETWEEN 1000 AND 2000
	ORDER BY maas ASC 
	
--1978 yılında doğmuş bütün çalışanların ad, soyad ve doğum günü bilgilerini istiyorum.
	
SELECT id, ad, soyad, dogum
FROM personel p 
WHERE dogum BETWEEN '1978-01-01' AND '1978-12-31'

-------------------------------------------------

SELECT ad, soyad, DOGUM FROM PERSONEL P WHERE EXTRACT(YEAR FROM DOGUM) = 1978;
	


/* Çocuklar !! ortalıkta 21 Aralık 2012 tarihinde Marduk gezegeninin gelip dünyaya
 çarpacağına dair bazı söylentiler dolaşıyor. Bu konuda kendi çapımda bir analiz
 yapmak istiyorum. Bu yüzden bana her bir çalışanın ID’sini, adını, soyadını
 ve Marduk geldiğinde kaç gündür yaşıyor olacağını içeren bir liste hazırlar mısınız?*/

SELECT  
	id, ad, soyad,   
	('2012-12-21' - dogum) AS gunfarki   

FROM personel  


--Üstteki soruyu Gün, ay, yıl olarak ayrı ayrı verirsek:
SELECT
	id,ad,soyad,
	AGE('2012-12-21', dogum) AS gunfarki
FROM personel p


-- In Kullanımı: Bir field değerinin belirli bir dizi değerlerden biri olup olmadığını kontrol etmek için kullanılır.
-- Bu ifade, birden fazla değeri kontrol etmek istediğinizde OR operatörüne göre daha okunabilir ve daha kısa bir yazım sağlar.



-- IN Kullanımı
-- Birden fazla OR kullanımı IN kullanımı demektir.
-- İsmi Mehmet, Dilek veya Cengiz olan bütün çalışanları listeleyin.
-- Liste ad ve soyada göre sıralanmış olsun.

SELECT * FROM personel p
WHERE ad IN ('Mehmet', 'Dilek', 'Cengiz')
ORDER BY ad,soyad



SELECT * FROM personel p
WHERE ad LIKE 'A%'

SELECT * FROM personel p
WHERE soyad LIKE '%oğlu'
































	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	