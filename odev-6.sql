--1. film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT AVG(rental_rate)::NUMERIC(10,2) AS "Ortalama Kiralama Ücreti" FROM film;

--2. film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
SELECT COUNT(*) AS "C Karakteri ile Başlayan Film Sayısı" FROM film
WHERE title LIKE 'C%';

--3. film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT MAX(length) AS "Kiralama Bedeli 0.99 Olan Filmler Arasında En Uzun Olanı" FROM film
WHERE rental_rate = 0.99;

--4. film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT replacement_cost) AS "Uzunluğu 150 Dakikadan Fazla Olan Filmlerin Farklı Değiştirme Ücreti Sayısı" FROM film
WHERE length > 150;