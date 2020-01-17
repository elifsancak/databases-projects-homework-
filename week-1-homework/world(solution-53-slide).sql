--- Use world.sql db.

--- 1. What are the names of the countries with population greater than 8 million

select name, population from country where population > 8000000;

+---------------------------------------+------------+
| name                                  | population |
+---------------------------------------+------------+
| Afghanistan                           |   22720000 |
| Angola                                |   12878000 |
| Argentina                             |   37032000 |
| Australia                             |   18886000 |
| Austria                               |    8091800 |
| Belgium                               |   10239000 |
| Burkina Faso                          |   11937000 |
| Bangladesh                            |  129155000 |
| Bulgaria                              |    8190900 |
| Belarus                               |   10236000 |
| Bolivia                               |    8329000 |
| Brazil                                |  170115000 |
| Canada                                |   31147000 |
| Chile                                 |   15211000 |
| China                                 | 1277558000 |
| CÃ´te dIvoire                         |   14786000 |
| Cameroon                              |   15085000 |
| Congo, The Democratic Republic of the |   51654000 |
| Colombia                              |   42321000 |
| Cuba                                  |   11201000 |
| Czech Republic                        |   10278100 |
| Germany                               |   82164700 |
| Dominican Republic                    |    8495000 |
| Algeria                               |   31471000 |
| Ecuador                               |   12646000 |
| Egypt                                 |   68470000 |
| Spain                                 |   39441700 |
| Ethiopia                              |   62565000 |
| France                                |   59225700 |
| United Kingdom                        |   59623400 |
| Ghana                                 |   20212000 |
| Greece                                |   10545700 |
| Guatemala                             |   11385000 |
| Haiti                                 |    8222000 |
| Hungary                               |   10043200 |
| Indonesia                             |  212107000 |
| India                                 | 1013662000 |
| Iran                                  |   67702000 |
| Iraq                                  |   23115000 |
| Italy                                 |   57680000 |
| Japan                                 |  126714000 |
| Kazakstan                             |   16223000 |
| Kenya                                 |   30080000 |
| Cambodia                              |   11168000 |
| South Korea                           |   46844000 |
| Sri Lanka                             |   18827000 |
| Morocco                               |   28351000 |
| Madagascar                            |   15942000 |
| Mexico                                |   98881000 |
| Mali                                  |   11234000 |
| Myanmar                               |   45611000 |
| Mozambique                            |   19680000 |
| Malawi                                |   10925000 |
| Malaysia                              |   22244000 |
| Niger                                 |   10730000 |
| Nigeria                               |  111506000 |
| Netherlands                           |   15864000 |
| Nepal                                 |   23930000 |
| Pakistan                              |  156483000 |
| Peru                                  |   25662000 |
| Philippines                           |   75967000 |
| Poland                                |   38653600 |
| North Korea                           |   24039000 |
| Portugal                              |    9997600 |
| Romania                               |   22455500 |
| Russian Federation                    |  146934000 |
| Saudi Arabia                          |   21607000 |
| Sudan                                 |   29490000 |
| Senegal                               |    9481000 |
| Somalia                               |   10097000 |
| Sweden                                |    8861400 |
| Syria                                 |   16125000 |
| Thailand                              |   61399000 |
| Tunisia                               |    9586000 |
| Turkey                                |   66591000 |
| Taiwan                                |   22256000 |
| Tanzania                              |   33517000 |
| Uganda                                |   21778000 |
| Ukraine                               |   50456000 |
| United States                         |  278357000 |
| Uzbekistan                            |   24318000 |
| Venezuela                             |   24170000 |
| Vietnam                               |   79832000 |
| Yemen                                 |   18112000 |
| Yugoslavia                            |   10640000 |
| South Africa                          |   40377000 |
| Zambia                                |    9169000 |
| Zimbabwe                              |   11669000 |
+---------------------------------------+------------+

--- 2. What are the names of the countries that have “land” in their names ?

Select name from country where name like "%land%";

+----------------------------------------------+
| name                                         |
+----------------------------------------------+
| Netherlands Antilles                         |
| Bouvet Island                                |
| Cocos (Keeling) Islands                      |
| Switzerland                                  |
| Cook Islands                                 |
| Christmas Island                             |
| Cayman Islands                               |
| Finland                                      |
| Fiji Islands                                 |
| Falkland Islands                             |
| Faroe Islands                                |
| Greenland                                    |
| Heard Island and McDonald Islands            |
| Ireland                                      |
| Iceland                                      |
| Marshall Islands                             |
| Northern Mariana Islands                     |
| Norfolk Island                               |
| Netherlands                                  |
| New Zealand                                  |
| Poland                                       |
| South Georgia and the South Sandwich Islands |
| Solomon Islands                              |
| Swaziland                                    |
| Turks and Caicos Islands                     |
| Thailand                                     |
| United States Minor Outlying Islands         |
| Virgin Islands, British                      |
| Virgin Islands, U.S.                         |
+----------------------------------------------+
       
--- 3. What are the names of the cities with population in between 500,000 and 1 million ?

select name from city where population between 500000 and 1000000;

--- 4. What are the names of all the countries on the continent ‘Europe’ ?

Select name from country where continent = "Europe";

+-------------------------------+
| name                          |
+-------------------------------+
| Albania                       |
| Andorra                       |
| Austria                       |
| Belgium                       |
| Bulgaria                      |
| Bosnia and Herzegovina        |
| Belarus                       |
| Switzerland                   |
| Czech Republic                |
| Germany                       |
| Denmark                       |
| Spain                         |
| Estonia                       |
| Finland                       |
| France                        |
| Faroe Islands                 |
| United Kingdom                |
| Gibraltar                     |
| Greece                        |
| Croatia                       |
| Hungary                       |
| Ireland                       |
| Iceland                       |
| Italy                         |
| Liechtenstein                 |
| Lithuania                     |
| Luxembourg                    |
| Latvia                        |
| Monaco                        |
| Moldova                       |
| Macedonia                     |
| Malta                         |
| Netherlands                   |
| Norway                        |
| Poland                        |
| Portugal                      |
| Romania                       |
| Russian Federation            |
| Svalbard and Jan Mayen        |
| San Marino                    |
| Slovakia                      |
| Slovenia                      |
| Sweden                        |
| Ukraine                       |
| Holy See (Vatican City State) |
| Yugoslavia                    |
+-------------------------------+

--- 5. List all the countries in the descending order based on their surface areas.

select name, SurfaceArea from country order by SurfaceArea desc;

--- If you have time left and want more practice you can try these optional homework exercises:

--- 1. What are the names of all the cities in the Netherlands?

???

--- 2. What's the population of Rotterdam?
 
select name, population from city where name='rotterdam';

+-----------+------------+
| name      | population |
+-----------+------------+
| Rotterdam |     593321 |
+-----------+------------+

--- 3. What's the top 10 countries based on surface area?

select name, surfacearea from country order by surfacearea asc limit 10;

+--------------------------------------+-------------+
| name                                 | surfacearea |
+--------------------------------------+-------------+
| Holy See (Vatican City State)        |        0.40 |
| Monaco                               |        1.50 |
| Gibraltar                            |        6.00 |
| Tokelau                              |       12.00 |
| Cocos (Keeling) Islands              |       14.00 |
| United States Minor Outlying Islands |       16.00 |
| Macao                                |       18.00 |
| Nauru                                |       21.00 |
| Tuvalu                               |       26.00 |
| Norfolk Island                       |       36.00 |
+--------------------------------------+-------------+

--- 4. What's the top 10 cities with the highest population?

select name, population from city order by population desc limit 10;

+---------------------+------------+
| name                | population |
+---------------------+------------+
| Mumbai (Bombay)     |   10500000 |
| Seoul               |    9981619 |
| SÃ£o Paulo          |    9968485 |
| Shanghai            |    9696300 |
| Jakarta             |    9604900 |
| Karachi             |    9269265 |
| Istanbul            |    8787958 |
| Ciudad de MÃ©xico   |    8591309 |
| Moscow              |    8389200 |
| New York            |    8008278 |
+---------------------+------------+

--- 5. What's the population of the world ?

select SUM(population) from city;

+-----------------+
| SUM(population) |
+-----------------+
|      1429559884 |
+-----------------+

 
</body>
</html>