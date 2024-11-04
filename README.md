# Patika+ Week6 SQL ile SQL5 bölümü Uygulaması
Merhaba,
Bu proje SQL ile Patika+ 6.hafta SQL komutları pratik için yapılmış bir uygulamadır.

## 📚 Proje Hakkında
Bu proje, aşağıdaki konuları öğrenmeye yardımcı olmak için tasarlanmıştır:
- Temel SQL komutları
- INNER JOIN kullanımı
- LEFT JOIN kullanımı
- RIGHT JOIN kullanımı
- FULL JOIN kullanımı
- INTERSECT kullanımı
- EXCEPT kullanımı
- UNION kullanımı


## ÖDEV 9 KOD:
```sql
/*
Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz
INNER JOIN sorgusunu yazınız.

2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
*/

-- 1.SORU
SELECT city, country FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 2.SORU
SELECT payment.payment_id, customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON payment.payment_id = customer.customer_id;

-- 3.SORU
SELECT rental_id, first_name, last_name FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;

```

## ÖDEV 10 KOD:
```sql
/*
1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz
LEFT JOIN sorgusunu yazınız.
2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
*/

-- 1.SORU
select city, country from country
left join city on city.country_id = country.country_id; 

-- 2.SORU
select distinct payment_id, first_name, last_name from customer
right join payment on payment.customer_id = customer.customer_id;

-- 3.SORU
select first_name, last_name, rental_id from customer
full join rental on rental.customer_id = customer.customer_id;
```

## ÖDEV 11 KOD:
```sql
/*
1.actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
2.actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
3.actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak 
ikinci tabloda bulunmayan verileri sıralayalım.
4. İlk 3 sorguyu tekrar eden veriler için de yapalım.
*/

--1.SORU
(
SELECT first_name FROM actor
)
UNION
(
SELECT first_name FROM customer
)

--2.SORU
(
SELECT first_name FROM actor
)
INTERSECT
(
SELECT first_name FROM customer
)

--3.SORU
(
SELECT first_name FROM actor
)
EXCEPT
(
SELECT first_name FROM customer
)

--4.SORU
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
```
