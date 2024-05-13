Use okul

Create table bolum(bolkod smallint primary key,bol_adi char(15))
Create table unvan(un_kod tinyint primary key ,ünvani char(11))
Create table hocalar(h_ID tinyint primary key ,h_adi char(20),h_soyadý char(20),
unvan tinyint foreign key references unvan (un_kod),top_ders_saati tinyint) 
Create table dersler(op_kod smallint primary key ,ders_kod char(10),ders_adi char(20),
dönem tinyint ,teori tinyint,pretik tinyint,hocasi tinyint foreign key references hocalar(h_ID))
 Create table notlar(no int ,op_kod smallint foreign key references dersler(op_kod),
 vize tinyint, check(vize between 0 and 100),final tinyint ,check(final between 0 and 100),
 but tinyint,check(but between  0 and 100))
 Create table memleket(tr_kod tinyint primary key,m_adi char(15),tel_kod smallint)
 Create table ogrenci(no int primary key,adi char(20),soyadi char(20),
 bolkod smallint foreign key references bolum(bolkod),sinif tinyint,
 check(sinif IN(1,2,3,4)),h_ID tinyint foreign key references hocalar(h_ID),
 d_tarihi datetime, memleket tinyint foreign key references memleket(tr_kod),cinsiyet char(5))
 

 


