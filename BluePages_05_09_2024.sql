-- BLUE PAGES
-- 05/09/2024


-- GROUP BY
-- Team Lead:
-- Her bir (each) departmana ortalama ne kadar  maaş ödeyeceğiz?
-- Ortalama maaşa göre büyükten küçüğe sıralayınız

SELECT 
	departman_id,  
	avg(maas) AS maas_depart_ort  

FROM personel p 
GROUP BY departman_id
ORDER BY avg(maas) DESC 





SELECT 
	departman_id,  
	round(avg(maas)) AS maas_depart_ort  

FROM personel p 
GROUP BY departman_id
ORDER BY avg(maas) DESC 


UPDATE personel
SET maas = maas + 100
WHERE id = 59

SELECT * FROM personel p 



