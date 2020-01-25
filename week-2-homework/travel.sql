

USE travel;

CREATE database IF NOT EXISTS travel;

-- DROP database IF EXISTS travel;
USE travel;

CREATE TABLE TourAgency(
  TourId Int,
  TourName varchar(30),
  TourAddress varchar(70),
  TourNum varchar(12),
  TourCountry varchar(30),
  PRIMARY KEY (TourId)
);

CREATE TABLE Packages(
  PackageId Int,
  TourId Int,
  PackageName varchar(30),
  Country varchar(30),
  City varchar(30),
  TotalTime varchar(10),
  Price varchar(30),
  PRIMARY KEY (PackageId),
  FOREIGN KEY (TourId) REFERENCES TourAgency(TourId)
);

CREATE TABLE City(
  CityId Int,
  CityName varchar(30),
  Locations varchar(70),
  PackageName varchar(30),
  PRIMARY KEY (CityId),
  FOREIGN KEY (PackageName) REFERENCES Packages(PackageName)
);

CREATE TABLE PackageDate(
  PackageTime varchar(10),
  DepartureDate Date,
  ConversionDate Date,
  PRIMARY KEY (PackageTime)
  
);

CREATE TABLE Otel(
  OtelId Int,
  OtelName varchar(30),
  OtelAddress varchar(50),
  OtelCity varchar(30),
  PRIMARY KEY (OtelId),
  FOREIGN KEY (OtelCity) REFERENCES City(CityName)
);

CREATE TABLE Payment(
  PaymentId Int,
  LastPayDate Date,
  PackagePrice varchar(30),
  PRIMARY KEY (PaymentId),
  FOREIGN KEY (PackagePrice) REFERENCES Packages(Price)
);

CREATE TABLE Customer(
  CustomerId Int,
  CusFirstName varchar(30),
  CusLastName varchar(30),
  CusAge varchar(3),
  CusGender varchar(1),
  CusPackageId Int,
  PRIMARY KEY (CustomerId),
  FOREIGN KEY (CusPackageId) REFERENCES Packages(PackageId)
);

INSERT INTO  TourAgency (TourId, TourName, TourAddress, TourNum, TourCountry) VALUES (123456, 'TheWorldTour', 'belgiumstreet', 0451345276, Belgium);
INSERT INTO  TourAgency (TourId, TourName, TourAddress, TourNum, TourCountry) VALUES (123457, 'TheWorldTour', 'francestreet', 0451345287, France);

INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (1,123654,'package1','france','paris','1-day','70euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (2,123456,'package2','france','lyon','2-day','60euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (3,123456,'package3','france','marsilya','1-day','50euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (4,123654,'package4','italy','roma','3-day','80euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (5,123456,'package5','italy','venedik','2-day','60euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (6,123654,'package6','germany','berlin','1-day','70euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (7,123654,'package7','germany','frankfurt','1-day','40euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (8,123456,'package8','italy','venedik','1-day','50euro');
INSERT INTO  Packages (PackageId, TourId, PackageName, Country, City, TotalTime, Price) VALUES (9,123456,'package9','france','paris','2-day','80euro');

INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (120,'paris','eyfel','package1');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (121,'paris','eyfel+louvre museum','package9');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (122,'lyon','Lyon cathedral','package2');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (123,'marsilya','Longchamp palace','package3');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (124,'roma','Vatikan museum','package4');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (125,'venedik','San marco+ahlar bridge','package5');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (126,'berlin','Bergama museum','package6');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (127,'frankfurt','Frankfurt Cathedral','package7');
INSERT INTO  City (CityId, CityName, Locations, PackageName) VALUES (128,'venedik','San marco','package8');


INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (1.1,'parisotel','parisstreet', 'paris');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (1.2,'lyonotel','lyonstreet', 'lyon');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (1.3,'marsilyaotel','marsilyastreet', 'marsilya');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (1.4,'paris2otel','paris2street', 'paris');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (2.1,'romaotel','romastreet', 'roma');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (2.2,'venedikotel','venedikstreet', 'venedik');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (2.3,'venedik2otel','venedik2street', 'venedik');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (2.4,'roma2otel','roma2street', 'roma');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (3.1,'berlinotel','berlinstreet', 'berlin');
INSERT INTO  Otel (OtelId, OtelName, OtelAddress, OtelCity) VALUES (3.2,'frankotel','frankstreet', 'frankfurt');


INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (501,08.01.2020,'70euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (502,18.01.2020,'60euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (503,24.01.2020,'50euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (504,02.02.2020,'80euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (505,08.02.2020,'60euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (506,13.02.2020,'70euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (507,18.02.2020,'40euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (508,20.03.2020,'50euro');
INSERT INTO  Payment (PaymentId, LastPayDate, PackagePrice) VALUES (509,24.03.2020,'80euro');

INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, CusPackageId) VALUES (31,'ali','fert',24,'m','9');
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, CusPackageId) VALUES (32,'veli','dert',35,'f','5');
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, CusPackageId) VALUES (33,'elif','terk',62,'f','7');
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, CusPackageId) VALUES (34,'ahmet','denk',43,'m','1');
INSERT INTO  Customer (CustomerId, CusFirstName, CusLastName, CusAge, CusGender, CusPackageId) VALUES (35,'ayse','tank',27,'f','9');

INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('1-day',09.01.2020,10.01.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('2-day',19.01.2020,21.01.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('1-day',25.01.2020,26.01.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('3-day',03.02.2020,06.02.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('2-day',09.02.2020,11.02.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('1-day',14.02.2020,15.02.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('1-day',19.02.2020,20.02.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('1-day',21.03.2020,22.03.2020);
INSERT INTO  PackageDate (PackageTime, DepartureDate, ConversionDate) VALUES ('2-day',25.03.2020,27.03.2020);

