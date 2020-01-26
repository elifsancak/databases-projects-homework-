-- Elif Sancak

DROP database IF EXISTS travel;
CREATE database travel;
USE travel;

DROP table IF EXISTS TourAgency;
CREATE TABLE TourAgency(
  TourId Int NOT NULL,
  TourName varchar(30) NOT NULL,
  TourAddress varchar(70) NOT NULL,
  TourNum varchar(15) NOT NULL,
  TourCountry varchar(30) NOT NULL,
  PRIMARY KEY (TourId)
)
default charset = utf8;

INSERT INTO  TourAgency (TourId, TourName, TourAddress, TourNum, TourCountry) 
VALUES (123456, 'TheWorldTour', 'belgiumstreet', 0451345276, 'Belgium');
INSERT INTO  TourAgency (TourId, TourName, TourAddress, TourNum, TourCountry) 
VALUES (123457, 'TheWorldTour', 'francestreet', 0451345287, 'France');

DROP table IF EXISTS Packages;
CREATE TABLE Packages(
  PackageId Int NOT NULL,
  TourId Int NOT NULL,
  PackageName varchar(30) NOT NULL,
  Country varchar(30) NOT NULL,
  CityName varchar(30) NOT NULL,
  PackageTime varchar(10) NOT NULL,
  PackagePrice varchar(30) NOT NULL,
  PRIMARY KEY (PackageId),
  constraint Packages_TourIdfk FOREIGN KEY (TourId) REFERENCES TourAgency(TourId)
),
constraint Packages_CityNamefk FOREIGN KEY (CityName) REFERENCES City(CityName)
),
constraint Packages_PackageTimefk FOREIGN KEY (PackageTime) REFERENCES PackageDate(PackageTime)
)
default charset utf8;

INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (1,123654,'package1','france','paris','1-day','70euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (2,123456,'package2','france','lyon','2-day','60euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (3,123456,'package3','france','marsilya','1-day','50euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (4,123654,'package4','italy','roma','3-day','80euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (5,123456,'package5','italy','venedik','2-day','60euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (6,123654,'package6','germany','berlin','1-day','70euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (7,123654,'package7','germany','frankfurt','1-day','40euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (8,123456,'package8','italy','venedik','1-day','50euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, CityName, PackageTime, PackagePrice) 
VALUES (9,123456,'package9','france','paris','2-day','80euro');

DROP table IF EXISTS City;
CREATE TABLE City(
  CityName varchar(30) NOT NULL,
  Locations varchar(70) NOT NULL,
  PackageName varchar(30) NOT NULL,
  PRIMARY KEY (CityName),
  constraint City_PackageNamefk FOREIGN KEY (PackageName) REFERENCES Packages(PackageName)
)
default charset utf8;

INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('paris','eyfel','package1');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('paris','eyfel+louvre museum','package9');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('lyon','Lyon cathedral','package2');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('marsilya','Longchamp palace','package3');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('roma','Vatikan museum','package4');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('venedik','San marco+ahlar bridge','package5');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('berlin','Bergama museum','package6');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('frankfurt','Frankfurt Cathedral','package7');
INSERT INTO  City (CityName, Locations, PackageName) 
VALUES ('venedik','San marco','package8');

DROP table IF EXISTS PackageDate;
CREATE TABLE PackageDate(
  PackageTime varchar(10) NOT NULL,
  DepartureDate Date,
  ConversionDate Date,
  PRIMARY KEY (PackageTime)
  
)
default charset utf8;

INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('1-day','09.01.2020','10.01.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('2-day','19.01.2020','21.01.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('1-day','25.01.2020','26.01.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('3-day','03.02.2020','06.02.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('2-day','09.02.2020','11.02.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('1-day','14.02.2020','15.02.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('1-day','19.02.2020','20.02.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('1-day','21.03.2020','22.03.2020');
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) 
VALUES ('2-day','25.03.2020','27.03.2020');

DROP table IF EXISTS Otel;
CREATE TABLE Otel(
  OtelId Int NOT NULL,
  OtelName varchar(30) NOT NULL,
  OtelAddress varchar(50) NOT NULL,
  CityName varchar(30) NOT NULL,
  PRIMARY KEY (OtelId),
  constraint Otel_CityNamefk FOREIGN KEY (CityName) REFERENCES City(CityName)
)
default charset utf8;

INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (1.1,'parisotel','parisstreet', 'paris');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (1.2,'lyonotel','lyonstreet', 'lyon');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (1.3,'marsilyaotel','marsilyastreet', 'marsilya');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (1.4,'paris2otel','paris2street', 'paris');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (2.1,'romaotel','romastreet', 'roma');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (2.2,'venedikotel','venedikstreet', 'venedik');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (2.3,'venedik2otel','venedik2street', 'venedik');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (2.4,'roma2otel','roma2street', 'roma');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (3.1,'berlinotel','berlinstreet', 'berlin');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, CityName) VALUES (3.2,'frankotel','frankstreet', 'frankfurt');

DROP table IF EXISTS Payment;
CREATE TABLE Payment(
  PaymentId Int NOT NULL,
  LastPayDate Date,
  PackagePrice varchar(30) NOT NULL,
  PRIMARY KEY (PaymentId),
  constraint Payment_PackagePricefk FOREIGN KEY (PackagePrice) REFERENCES Packages(PackagePrice)
)
default charset utf8;

INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (501,'08.01.2020','70euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (502,'18.01.2020','60euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (503,'24.01.2020','50euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (504,'02.02.2020','80euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (505,'08.02.2020','60euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (506,'13.02.2020','70euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (507,'18.02.2020','40euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (508,'20.03.2020','50euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (509,'24.03.2020','80euro');

DROP table IF EXISTS Customer;
CREATE TABLE Customer(
  CustomerId Int NOT NULL,
  CusFirstName varchar(30) NOT NULL,
  CusLastName varchar(30) NOT NULL,
  CusAge varchar(3) NOT NULL,
  CusGender varchar(1),
  PackageId Int NOT NULL,
  PRIMARY KEY (CustomerId),
  constraint Customer_PackageIdfk FOREIGN KEY (PackageId) REFERENCES Packages(PackageId)
)
default charset utf8;

INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, PackageId) 
VALUES (31,'ali','fert',24,'m',9);
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, PackageId) 
VALUES (32,'veli','dert',35,'f',5);
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, PackageId) 
VALUES (33,'elif','terk',62,'f',7);
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, PackageId) 
VALUES (34,'ahmet','denk',43,'m',1);
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, PackageId) 
VALUES (35,'ayse','tank',27,'f',9);

-- Elif Sancak