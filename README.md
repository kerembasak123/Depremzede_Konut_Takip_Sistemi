# DEPREMZEDE KONUT TAKİP SİSTEMİ

## PROJE EKİBİ
Kerem Berke Başak - 235260154  
Melih Kerimgil - 205260012  
Muhammed Talha Topçu - 225260120  

## PROJE TANIMI VE AMACI
Depremzede Konut Takip Sistemi projesi, depremzedelere sağlanan konutların takibini ve yönetimini kolaylaştırmak için tasarlanmıştır. Bu sistem, depremzedelerin başvuru süreçlerini, konut tahsisatlarını, konutların durumunu ve ilgili raporları merkezi bir veritabanında takip eder. Projenin amacı, konut başvurularını, tahsisatlarını ve personel görevlerini etkin bir şekilde yönetmek ve gerektiğinde hızlı erişim sağlamak suretiyle depremzedelere yönelik hizmetlerin daha verimli ve şeffaf hale gelmesini sağlamaktır. Bu sayede, kullanıcılar arasındaki koordinasyonu güçlendirerek, afet sonrası hızlı müdahale ve yardım süreçlerinin iyileştirilmesi hedeflenmektedir.

## PROJE İÇİN KULLANILAN TABLOLAR
Bu sistemde aşağıdaki tablolar ve her birine ait alanlar tanımlanmıştır. Her tablo, veritabanındaki farklı bir işlevi veya süreci temsil eder.

1. **Adres Tablosu**
   - AdresID (Primary Key)
   - DepremzedeID (Foreign Key -> Depremzede)
   - EskiAdres
   - YeniAdres

2. **Depremzede Tablosu**
   - DepremzedeID (Primary Key)
   - Ad
   - Soyad
   - TC_KimlikNo
   - DogumTarihi

3. **İletişim Tablosu**
   - İletisimID (Primary Key)
   - DepremzedeID (Foreign Key -> Depremzede)
   - Telefon
   - Email

4. **Konut Tablosu**
   - KonutID (Primary Key)
   - Adres
   - Metrekare
   - OdaSayisi
   - KonutTuruID (Foreign Key -> Konut_Turu)
   - DurumID (Foreign Key -> Konut_Durumu)

5. **Konut_Durumu Tablosu**
   - DurumID (Primary Key)
   - Durum

6. **Konut_Sahipligi Tablosu**
   - KonutSahipligiID (Primary Key)
   - KonutID (Foreign Key -> Konut)
   - SahipID (Foreign Key -> Depremzede)

7. **Konut_Turu Tablosu**
   - KonutTuruID (Primary Key)
   - Turu

8. **Tahsis Tablosu**
   - TahsisID (Primary Key)
   - DepremzedeID (Foreign Key -> Depremzede)
   - KonutID (Foreign Key -> Konut)
   - TahsisTarihi

9. **Tahsis_Tarihi Tablosu**
   - TahsisTarihiID (Primary Key)
   - KonutID (Foreign Key -> Konut)
   - TahsisTarihi
# UML

![UML](https://github.com/kerembasak123/Depremzede_Konut_Takip_Sistemi/blob/main/DepremzedeKonutTakipSistemi/UML.png)
# E-R Diyagramı

![E-R Diyagramı](https://github.com/kerembasak123/Depremzede_Konut_Takip_Sistemi/blob/main/DepremzedeKonutTakipSistemi/E-R%20Diyagram%C4%B1.jpg)

