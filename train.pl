hello :- write('------------Welcome to KL Sentral------------'), nl, nl,

         write('Enter your name: '), nl,
         read(Name), nl,

         write('Where are you going? Choose your option number.'), nl, nl,
         write('   SOUTH TRAIN    |   NORTH TRAIN'), nl,
         write('    1) Kajang     |    5) Kuala Lumpur'), nl,
         write('    2) Seremban   |    6) Rawang'), nl,
         write('    3) Tampin     |    7) Ipoh'), nl,
         write('    4) Gemas      |    8) Taiping'), nl,
         write('                  |    9) Alor Setar'), nl,
         write('                  |   10) Padang Besar'), nl, nl,
         write('---------------------------------------------'), nl,

         read(Location), nl,
         write('Enter date(dd/mm/yyyy): '), nl,
         read(Date), nl,

         destination(Location, Desti),
         price(Location, Price),
         duration(Location, Duration),
         depart(Location, Depart),
         arrive(Location, Time_depart, Arrive, Depart),
         route_map(Location, Route), nl,

         write('Thank you for purchasing with us! ^_^'), nl,nl,
         write('------Ticket Details------'), nl,nl,

         write('Passenger Name: '),
         write(Name),nl,

         write('From: KL Sentral'), nl,

         write('Destination: '),
         write(Desti), nl,

         write('Price: RM '),
         write(Price), nl,

         write('Date: '),
         write(Date), nl,

         write('Departure Time: '),
         write(Depart), write(' hrs'), nl,

         write('Arrival Time: '),
         write(Arrive), write(' hrs'), nl,

         write('Duration: '),
         write(Duration), nl,

         write('Route: '),
         write(Route), nl,nl,

         write('--------------------------').

destination(Location,Desti) :- Location = 1, Desti = 'Kajang'.
destination(Location,Desti) :- Location = 2, Desti = 'Seremban'.
destination(Location,Desti) :- Location = 3, Desti = 'Tampin'.
destination(Location,Desti) :- Location = 4, Desti = 'Gemas'.
destination(Location,Desti) :- Location = 5, Desti = 'Kuala Lumpur'.
destination(Location,Desti) :- Location = 6, Desti = 'Rawang'.
destination(Location,Desti) :- Location = 7, Desti = 'Ipoh'.
destination(Location,Desti) :- Location = 8, Desti = 'Taiping'.
destination(Location,Desti) :- Location = 9, Desti = 'Alor Setar'.
destination(Location,Desti) :- Location = 10, Desti = 'Padang Besar'.

price(Location, Price) :- Location = 1, Price = 12.
price(Location, Price) :- Location = 2, Price = 18.
price(Location, Price) :- Location = 3, Price = 25.
price(Location, Price) :- Location = 4, Price = 31.
price(Location, Price) :- Location = 5, Price = 9.
price(Location, Price) :- Location = 6, Price = 13.
price(Location, Price) :- Location = 7, Price = 36.
price(Location, Price) :- Location = 8, Price = 62.
price(Location, Price) :- Location = 9, Price = 70.
price(Location, Price) :- Location = 10, Price = 76.

duration(Location, Duration) :- Location = 1, Duration = '36 mins'.
duration(Location, Duration) :- Location = 2, Duration = '1h 24 mins '.
duration(Location, Duration) :- Location = 3, Duration = '1h 57 mins'.
duration(Location, Duration) :- Location = 4, Duration = '2h 34 mins'.
duration(Location, Duration) :- Location = 5, Duration = '5 mins'.
duration(Location, Duration) :- Location = 6, Duration = '51 mins'.
duration(Location, Duration) :- Location = 7, Duration = '2h 40 mins'.
duration(Location, Duration) :- Location = 8, Duration = '3h 19 mins'.
duration(Location, Duration) :- Location = 9, Duration = '5h 1 mins'.
duration(Location, Duration) :- Location = 10, Duration = '5h 45 mins'.


depart(Location, Depart) :- write('Choose your depart time: '), nl,
                            write('1) 9.00 am'), nl,
                            write('2) 3.00 pm'), nl,

                            read(Time_depart),
                            arrive(Location, Time_depart, Arrive, Depart),
                            Time_depart = 1, Depart = 0900;
                            Time_depart = 2, Depart = 1500.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 1,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+36.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 1,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+36.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 2,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+124.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 2,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+124.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 3,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+157.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 3,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+157.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 4,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+234.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 4,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+234.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 5,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+5.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 5,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+5.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 6,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+51.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 6,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+51.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 7,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+240.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 7,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+240.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 8,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+319.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 8,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+319.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 9,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+501.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 9,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+501.

arrive(Location, Time_depart, Arrive, Depart) :- Location = 10,
                                                 Time_depart = 1, Depart =  0900,
                                                 Arrive is Depart+545.
arrive(Location, Time_depart, Arrive, Depart) :- Location = 10,
                                                 Time_depart = 2, Depart = 1500,
                                                 Arrive is Depart+545.

route_map(Location, Route) :- Location = 1,
                              Route = 'KL Sentral > Kajang'.
route_map(Location, Route) :- Location = 2,
                              Route = 'KL Sentral > Kajang > Seremban'.
route_map(Location, Route) :- Location = 3,
                              Route = 'KL Sentral > Kajang > Seremban > Tampin'.
route_map(Location, Route) :- Location = 4,
                              Route = 'KL Sentral > Kajang > Seremban > Tampin > Gemas'.
route_map(Location, Route) :- Location = 5,
                              Route = 'KL Sentral > Kuala Lumpur'.
route_map(Location, Route) :- Location = 6,
                              Route = 'KL Sentral > Kuala Lumpur > Rawang'.
route_map(Location, Route) :- Location = 7,
                              Route = 'KL Sentral > Kuala Lumpur > Rawang > Ipoh'.
route_map(Location, Route) :- Location = 8,
                              Route = 'KL Sentral > Kuala Lumpur > Rawang > Ipoh > Taiping'.
route_map(Location, Route) :- Location = 9,
                              Route = 'KL Sentral > Kuala Lumpur > Rawang > Ipoh > Taiping > Alor Setar'.
route_map(Location, Route) :- Location = 10,
                              Route = 'KL Sentral > Kuala Lumpur > Rawang > Ipoh > Taiping > Alor Setar > Padang Besar'.
















































