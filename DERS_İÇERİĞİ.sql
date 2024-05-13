Use UNI  -- *** ikinci a�ama tablolar� olu�turuyoru... ***! clasromda verilen dersler k�sm�nda teori var ama bizim olu�turdu�umuz veri taban�nda teori k�sm� yok ekleme hatas� vermesi bundan.
Create table bolum(bolkod smallint primary key, bol_adi char(15))
Create table unvan(un_kod tinyint primary key, unvani char(11))
Create table hocalar(h_ID tinyint primary key, h_adi char(20),h_soyadi char(20),unvan tinyint foreign key references unvan(un_kod), top_ders_saati tinyint)
Create table dersler(op_kod smallint primary key, ders_kod char(10), ders_adi char(20),donem tinyint,teori tinyint, pratik tinyint, hocasi tinyint foreign key references hocalar(h_ID))
Create table notlar(no int,op_kod smallint foreign key references dersler (op_kod), vize tinyint, check(vize between 0 and 100),final tinyint, check (final between 0 and 100),but tinyint, check(but between 0 and 100))
Create table memleket(tr_kod tinyint primary key, m_adi char(15), tel_kod smallint )
Create table ogrenci(no int primary key, adi char(20), soyadi char(20),bolkod smallint foreign key references bolum(bolkod), sinif tinyint, check (sinif IN(1,2,3,4)), 
h_ID tinyint foreign key references hocalar(h_ID),d_tarihi datetime, memleket tinyint foreign key references memleket (tr_kod), cinsiyet char(5))

  --*** ���nc� a�ama veri taban� kullan�p veri ekleme �st ks�m�n tamam�n� silip bu kodlar� yaz...***


--**veri ekleme k�sm� clasroomda verilen resimlerin kodlara aktar�lmas�***
insert into bolum values (536, 'Yap�-Resim');
insert into bolum values (535, 'Yap�');
insert into bolum values (534, 'Makine');
insert into bolum values (533, 'Tala�l�');
insert into bolum values (532, 'Metal');
insert into bolum values (531, 'Bilgisayar');
insert into bolum values (530, 'Elektronik');


insert into unvan values(1,'Prof. Dr.');
insert into unvan values(2,'Do�. Dr.');
insert into unvan values(3,'Yrd. Do�.');
insert into unvan values(4,'��r. G�r.');
insert into unvan values(5,'��r.G�r.Dr.');
insert into unvan values(6,'Ar�. G�r.');

--***derslerden �nce hocalar� ekleme gerekti di�er t�rl� hoca �d hatas� veriyor s�ralamya diilkat edilmesi gerekiyoor.!*** 

insert into hocalar values(1,'Asaf','Varol',1,20);
insert into hocalar values(2,'Muammer','G�kbulut',1,20);
insert into hocalar values(3,'Hakan','Akpolat',1,20);
insert into hocalar values(4,'Hanifi','G�ldemir',1,20);
insert into hocalar values(5,'�brahim','T�rko�lu',2,18);
insert into hocalar values(6,'Mehmet','Gedikp�nar',2,17);
insert into hocalar values(7,'Servet','Tuncer',3,17);
insert into hocalar values(8,'Engin','Avc�',3,17);
insert into hocalar values(9,'Davut','Hanbay',3,17);
insert into hocalar values(10,'Abdulkadir','�eng�r',3,17);
insert into hocalar values(11,'Nurhayat','Varol',4,15);
insert into hocalar values(12,'Cafer','Bal',5,16);
insert into hocalar values(13,'Erkan','Tany�ld�z�',5,16);
insert into hocalar values(14,'Murat','Karabatak',4,15);
insert into hocalar values(15,'Ferhat','Bah�ac�',6,12);
insert into hocalar values(16,'Korhan','Kay��l�',6,12);


insert into dersler values(101,'tde 102','T�rkdili',2,2,2,12);
insert into dersler values(104,'tdi 132','�ngilizce',2,2,0,16);
insert into dersler values(114,'bil 166','Nesne Y�n.Prog.gr.',2,2,2,14);
insert into dersler values(115,'bil 168','Bilgisayar Donan�m�',2,2,0,5);
insert into dersler values(118,'egt 162','Okul Dneyimi',2,1,4,3);
insert into dersler values(151,'tde 101','T�rkk Dili',1,2,0,12);
insert into dersler values(155,'bil 161','TemelBilTekKullan�m',1,2,2,11);
insert into dersler values(164,'mat 167','Matematik',1,3,0,12);
insert into dersler values(167,'egt 171','��rt.Mesle�ineGiri�',1,3,0,3);
insert into dersler values(218,'elt 292','Elektrik Devreleri',2,3,2,6);
insert into dersler values(219,'bil 282','Meslek Mat',2,3,0,1);
insert into dersler values(222,'bil 288','Bil Prog 2',2,2,2,13);
insert into dersler values(270,'bil 285','Mnat�k Devreler',1,3,0,4);
insert into dersler values(271,'bil 287','Bil. Prog.',1,3,2,15)
insert into dersler values(274,'elt 291','Dvere Analizi',1,3,2,7)
insert into dersler values(317,'Egt 372','S�n�f y�netimi',2,2,2,8)
insert into dersler values(326,'bil 383 ','Teknik ileti�im',1,2,0,11)
insert into dersler values(434,'egt 486','WEB Prog.',2,3,2,13);
insert into dersler values(436,'egt 490','Proje 2',2,0,2,8);
insert into dersler values(467,'egt 471','Okul Deneyimi',1,1,4,9);
insert into dersler values(481,'egt 483','Bil. A�lar� 2',1,3,2,1);
insert into dersler values(482,'egt 485','Web tasar�m�',1,3,2,14);
insert into dersler values(483,'egt 487','Yapay Zeka',1,3,0,13);
insert into dersler values(484,'egt 489','Proje',1,0,2,8);




insert into memleket values(1,'Adana',322);
insert into memleket values(2,'Ad�yaman',416);
insert into memleket values(3,'Afyon',272);
insert into memleket values(4,'A�r�',472);
insert into memleket values(5,'Amasya',382);
insert into memleket values(6,'Ankara',312);
insert into memleket values(7,'Antalya',242);
insert into memleket values(8,'Artvin',466);
insert into memleket values(9,'Ayd�n',256);
insert into memleket values(10,'Bal�kesir',266);
insert into memleket values(11,'Bilecik',228);
insert into memleket values(12,'Bing�l',426);
insert into memleket values(13,'Bitlis',434);
insert into memleket values(14,'Bolu',	374);
insert into memleket values(15,'Burdur',248);
insert into memleket values(16,'Bursa',224);
insert into memleket values(17,'�anakkale',286);
insert into memleket values(18,'�ank�r�',376);
insert into memleket values(19,'�orum',364);
insert into memleket values(20,'Denizli',258);
insert into memleket values(21,'Diyarbak�r',412);
insert into memleket values(22,'Edirne',284);
insert into memleket values(23,'Elaz��',424);
insert into memleket values(24,'Erzincan',446);
insert into memleket values(25,'Erzurum',442);
insert into memleket values(26,'Eski�ehir',222);
insert into memleket values(27,'Gaziantep',342);
insert into memleket values(28,'Giresun',454);
insert into memleket values(29,'G�m�hane',456);
insert into memleket values(30,'Hakkari',438);
insert into memleket values(31,'Hatay',326);
insert into memleket values(32,'Isparta',246);
insert into memleket values(33,'Mersin ��el',324);
insert into memleket values(34,'�stanbul',216);
insert into memleket values(35,'�zmir',232);
insert into memleket values(36,'Kars',474);
insert into memleket values(38,'Kayseri',352);
insert into memleket values(39,'K�rklareli',386);
insert into memleket values(40,'K�r�ehir',386);
insert into memleket values(41,'Kocaeli',262);
insert into memleket values(42,'Konya',332);
insert into memleket values(43,'K�tahya',247);
insert into memleket values(44,'Malatya',422);
insert into memleket values(45,'Manisa',236);
insert into memleket values(46,'Kahraman Mara�',344);
insert into memleket values(47,'Mardin',482);
insert into memleket values(48,'Mu�la',252);
insert into memleket values(49,'Mu�',436);
insert into memleket values(50,'Nev�ehir',384);
insert into memleket values(51,'Ni�de',388);
insert into memleket values(52,'Ordu',452);
insert into memleket values(53,'Rize',464);
insert into memleket values(54,'Sakarya',264);
insert into memleket values(55,'Samsun',362);
insert into memleket values(56,'Siirt',484);
insert into memleket values(57,'Sinop',368);
insert into memleket values(58,'Sivas',346);
insert into memleket values(59,'Tekirda�',282);
insert into memleket values(60,'Tokat',356);
insert into memleket values(61,'Trabzon',462);
insert into memleket values(62,'Tunceli',428);
insert into memleket values(63,'�anl�urfa',414);
insert into memleket values(64,'U�ak',276);
insert into memleket values(65,'Van',432);
insert into memleket values(66,'Yozgat',354);
insert into memleket values(67,'Zonguldak',372);
insert into memleket values(68,'Aksaray',382);
insert into memleket values(69,'Bayburt',458);
insert into memleket values(70,'Karaman',338);
insert into memleket values(71,'K�r�kkale',318);
insert into memleket values(72,'Batman',488);
insert into memleket values(73,'��rnak',486);
insert into memleket values(74,'Bart�n',378);
insert into memleket values(75,'Ardahan',478);
insert into memleket values(76,'I�d�r',476);
insert into memleket values(77,'Yalova',226);
insert into memleket values(78,'Karab�k',370);
insert into memleket values(79,'Kilis',348);
insert into memleket values(80,'Osmaniye',328);
insert into memleket values(81,'D�zce',111);








insert into ogrenci values(5530535,'Feyza','U�an',530,4,7,1985-11-16,55,'Bayan');
insert into ogrenci values(5531519,'Bet�l','Cebe',531,4,5,1986-06-01,5,'Bayan');
insert into ogrenci values(6532510,'Leyla','Korkmaz',532,3,1,1986-09-11,1,'Bayan');
insert into ogrenci values(6532518,'Ali','Y�lmaz',532,3,1,1987-08-13,40,'Erkek');
insert into ogrenci values(6535501,'Bilal','Baymaz',535,3,8,1987-07-21,28,'Erkek');
insert into ogrenci values(7536511,'Ayt�l','�etinkaya',536,2,13,1987-05-09,70,'Bayan');
insert into ogrenci values(7536521,'Veli','U�ak',536,2,13,1988-07-03,21,'Erkek');
insert into ogrenci values(7536545,'Cengiz','G�ne�',536,2,13,1988-04-11,66,'Erkek');



insert into notlar values(7536511,274,53,80,40);
insert into notlar values(7536511,218,98,76,54);
insert into notlar values(7536521,274,21,78,63);
insert into notlar values(7536521,222,57,90,65);
insert into notlar values(7536545,274,34,23,60);
insert into notlar values(7536545,271,12,11,30);
insert into notlar values(6532510,373,11,47,45);
insert into notlar values(6532510,372,60,66,88);
insert into notlar values(6532510,371,23,45,67);
insert into notlar values(5531519,433,63,70,90);
insert into notlar values(5531519,421,40,66,96);
insert into notlar values(5530535,433,38,60,100);
insert into notlar values(5530535,421,50,80,77);
