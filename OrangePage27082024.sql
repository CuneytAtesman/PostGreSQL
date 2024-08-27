-- ORANGE PAGES

CREATE TABLE person (
ssn char(9),
isim varchar(50),
soyisim varchar(50),
adres varchar(50)
);

INSERT INTO person VALUES(123456789, 'Ali','Can', 'Istanbul');
INSERT INTO person VALUES(234567890, 'Veli','Cem', 'Ankara');
INSERT INTO person VALUES(345678901, 'Mine','Bulut', 'Ankara');
INSERT INTO person VALUES(256789012, 'Mahmut','Bulut', 'Istanbul');
INSERT INTO person VALUES (344678901, 'Mine','Yasa', 'Ankara');
INSERT INTO person VALUES (345678901, 'Veli','Yilmaz', 'Istanbul');
INSERT INTO person VALUES(256789018, 'Samet','Bulut', 'Izmir');
INSERT INTO person VALUES(256789013, 'Veli','Cem', 'Bursa');
INSERT INTO person VALUES(256789010, 'Samet','Bulut', 'Ankara');

SELECT * FROM person;

-- Senaryo 1: person tablosundaki tüm kayıtları adrese göre (artan)
-- sıralayarak listeleyiniz

SELECT * FROM person ORDER BY adres

-- Senaryo 2: person tablosundaki tüm kayıtları soyisime göre (azalan) sıralayarak listeleyiniz.

SELECT * FROM person ORDER BY soyisim DESC 

-- Senaryo 3: person isim ve soyisim değerlerini, soyisim kelime uzunluklarına göre sıralayarak listeleyiniz.

SELECT isim, 
	   soyisim
FROM   person
ORDER BY LENGTH (soyisim) -- soyisimi küçükten büyüğe sıraladı

/* Senaryo 4: person Tüm isim ve soyisim değerlerini aralarında bir boşluk ile aynı sutunda çağırarak, 
her bir isim ve soyisim değerinin toplam uzunluğuna göre sıralayınız.*/


SELECT CONCAT (isim,' ',soyisim) AS isim_soyisim -- Field Başlık
FROM   person
ORDER BY LENGTH(isim) + LENGTH(soyisim)

-- NOT: || Operatörü ile de String Birleştirmesi yapılaiblir
/* üstteki CONCAT işlemini şöyle yapaibliriz:
 SELECT
    isim || ' ' || soyisim
FROM person
ORDER BY LENGTH(isim || ' ' || soyisim);
*/

SELECT
    isim || ' ' || soyisim AS isim_soyisim -- Field Başlık
FROM person
ORDER BY LENGTH(isim || ' ' || soyisim);


--NOT: Alttaki işlemde fazladan LENGTH değerlerini raporladık
SELECT CONCAT(isim,' ',soyisim), LENGTH(CONCAT(isim,soyisim))
FROM person
ORDER BY LENGTH(CONCAT(isim,soyisim))
























