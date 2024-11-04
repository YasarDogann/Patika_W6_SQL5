# Patika+ Week6 SQL ile Temel Ödev11 Uygulaması
Merhaba,
Bu proje SQL ile Patika+ 6.hafta SQL komutları pratik için yapılmış bir uygulamadır.

## 📚 Proje Hakkında
Bu proje, aşağıdaki konuları öğrenmeye yardımcı olmak için tasarlanmıştır:
- Temel SQL komutları
- INTERSECT kullanımı
- EXCEPT kullanımı
- UNION kullanımı
- 


## ÖDEV 11 KOD:
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
