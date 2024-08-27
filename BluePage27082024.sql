-- BLUE PAGE 27 08 2024

--ORDER BY

--Şirketimizde çalışan herkesin listesini istiyorum. Ancak, uzun listelerde aradığım kişiyi bulmam zor oluyor. 
--Bu yüzden, listeyi kişilerin ismine göre dizilmiş hale getirin.

SELECT *
FROM personel p 
ORDER BY ad ASC -- isme göre sıralama yaptık

SELECT *
FROM personel p 
ORDER BY ad DESC -- ters sıralama yaptık

/* Bana bütün şirket çalışanlarının ad, soyad ve maaş bilgilerinin tam listesi lazım. 
Bu listeyi öyle hale getirin ki; ada göre ters, soyada göre ters ve maaşa göre düz bir şekilde sıralanmış olsun.*/

SELECT ad, soyad, maas
FROM personel 
ORDER BY ad DESC, 
soyad DESC,
maas ASC 

SELECT (ad, soyad, maas)  -- FOR 1 field
FROM personel 
ORDER BY ad DESC, 
soyad DESC,
maas 

SELECT ad, soyad, maas
FROM personel 
ORDER BY ad DESC, 
soyad DESC, maas


/* Çocuklar; elemanların adını, soyadını ve maaşını listelediğiniz ekranda
küçük bir değişiklik istiyorum. Ad sütunununbaşlığı ‘A’,
soyad sütununun başlığı ise ‘S’ olsun. Maaş sütununun başlığı
yine ‘MAAŞ’ olarak kalabilir.*/

SELECT ad AS a, soyad AS s, maas -- büyük harf için aşağıdaki gibi tırnak içine al

FROM personel p 

SELECT ad AS "A", soyad AS "S", maas 
FROM personel p 



/* Şirketimize ilk siparişi vermiş olan müşterimize küçük bir ödül vermek istiyorum. 
 Bana söz konusu müşterinin ID’sini bulabilir misiniz?*/

SELECT * FROM siparis s 

SELECT musteri_id AS MUSTERI
FROM siparis s 
ORDER BY id 


--BILGI:
--OFFSET ve LIMIT e alternat,f oalrak kullanılaibllen alttaki sorgu da vardır:
SELECT * FROM personel p 
ORDER BY maas 
OFFSET 5
ROWS FETCH NEXT 3 ROWS ONLY;



-- developers table create

CREATE TABLE developers(
id SERIAL PRIMARY KEY,
name varchar(50),
email varchar(50) UNIQUE,
salary real,
prog_lang varchar(20),
city varchar(50),
age int	
);

INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Abdullah Berk','abdullah@mail.com',4000,'Java','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mehmet Cenk','mehmet@mail.com',5000,'JavaScript','Istanbul',35);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ayşenur Han ','aysenur@mail.com',5000,'Java','Izmir',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Kübra Han','kubra@mail.com',4000,'JavaScript','Istanbul',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Muhammed Demir','muhammed@mail.com',6000,'Java','Izmir',25);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Fevzi Kaya','fevzi@mail.com',6000,'Html','Istanbul',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Enes Can','enes@mail.com',5500,'Css','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Tansu Han','tansu@mail.com',5000,'Java','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Said Ran','said@mail.com',4500,'Html','Izmir',33);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mustafa Pak','mustafa@mail.com',4500,'Css','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Hakan Tek','hakan@mail.com',7000,'C++','Konya',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Deniz Çetin','deniz@mail.com',4000,'C#','Istanbul',30);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Betül Çetin','btl@mail.com',4000,'C#','Bursa',29);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ayse Gul','ayse@mail.com',4000,'C#','Ankara',29);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ali Seker','ali@mail.com',4000,'C#','Ankara',29);

INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Cüneyt Ateşman','theatesmans@gmail.com',8000,'Data Scientist','Finland',54);

SELECT * FROM developers 

SELECT *
FROM developers d
ORDER BY salary ASC
LIMIT 3

SELECT *
FROM developers
ORDER BY salary LIMIT 3

SELECT *
FROM developers 
ORDER BY salary DESC 
OFFSET 1
LIMIT 1;


SELECT *
FROM personel p 
WHERE ad = 'Mehmet'

SELECT *
FROM personel p 
WHERE dogum = '01-11-1978'

-- WHERE komutu

CREATE TABLE calisanlar1(
id char(5),
isim varchar(50),
maas int,
ise_baslama date
);

INSERT INTO calisanlar1 VALUES('10002', 'Donatello' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10003', null, 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10004', 'Donatello', 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10005', 'Michelangelo', 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10006', 'Leonardo', null, '2019-04-12');
INSERT INTO calisanlar1 VALUES('10007', 'Raphael',null , '2018-04-14');
INSERT INTO calisanlar1 VALUES('', 'April', 2000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('', 'Ms.April', 2000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10002', 'Splinter' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES( null, 'Fred' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10008', 'Barnie' ,10000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10009', 'Wilma' ,11000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10010', 'Betty' ,12000, '2018-04-14');

CREATE TABLE adresler1(
adres_id char(5),
sokak varchar(30),
cadde varchar(30),
sehir varchar(20)
);

INSERT INTO adresler1 VALUES('10003','Ninja Sok', '40.Cad.','IST');
INSERT INTO adresler1 VALUES('10003','Kaya Sok', '50.Cad.','Ankara');
INSERT INTO adresler1 VALUES('10002','Taş Sok', '30.Cad.','Konya');
INSERT INTO adresler1 VALUES('10012','Taş Sok', '30.Cad.','Konya');
INSERT INTO adresler1 VALUES(NULL,'Taş Sok', '23.Cad.','Konya');
INSERT INTO adresler1 VALUES(NULL,'Taş Sok', '33.Cad.','Bursa');

SELECT * FROM calisanlar1;
SELECT * FROM adresler1;

--calisanlar tablosundan ismi 'Donatello' olanların tüm bilgilerini listeleyelim

SELECT *
FROM calisanlar1 
WHERE isim = 'Donatello'

SELECT *
FROM calisanlar1
WHERE maas > 5000

















































