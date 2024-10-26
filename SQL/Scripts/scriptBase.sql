CREATE TABLE Airline (
  Code NVARCHAR(200) ,
  Description NVARCHAR(500),
  Airline_id INT IDENTITY(1,1) PRIMARY KEY
);

CREATE TABLE Airport (
  Airport_ID INT IDENTITY(1,1) PRIMARY KEY,
  Origin VARCHAR(50),
  OriginCityName VARCHAR(50),
  OriginState VARCHAR(50),
  Dest VARCHAR(50),
  DestCityName VARCHAR(50),
  DestState VARCHAR(50)
);

CREATE TABLE Time (
  Date_ID INT IDENTITY(1,1) PRIMARY KEY,
  Year VARCHAR(50),
  Month VARCHAR(50),
  DayofMonth VARCHAR(50),
  DayOfWeek VARCHAR(50),
  CRSDepTime VARCHAR(50),
  DepTime VARCHAR(50),
  CRSArrTime VARCHAR(50),
  ArrTime VARCHAR(50)
);

CREATE TABLE Fact_Flights (
  Flight_ID INT IDENTITY(1,1) PRIMARY KEY,
  FlightDate VARCHAR(50),
  Marketing_Airline_Network VARCHAR(50),
  Flight_Number_Operating_Airline VARCHAR(50),
  DepDelayMinutes VARCHAR(50),
  ArrDelayMinutes VARCHAR(50),
  Cancelled VARCHAR(50),
  Diverted VARCHAR(50),
  OriginAirportID VARCHAR(50),  
  DestAirportID VARCHAR(50),    
  Distance VARCHAR(50),

);

-- añadiendo llaves foraneas 
ALTER TABLE Fact_Flights
ADD Airline_ID INT,
    Airport_ID INT,
    Date_ID INT;
--creacion de llaves foraneas
-- Crear relación con la tabla Airline
ALTER TABLE Fact_Flights
ADD CONSTRAINT FK_Airline
FOREIGN KEY (Airline_ID) REFERENCES Airline(Airline_id); 

-- Crear relación con la tabla Airport
ALTER TABLE Fact_Flights
ADD CONSTRAINT FK_Airport
FOREIGN KEY (Airport_ID) REFERENCES Airport(Airport_ID);

-- Crear relación con la tabla Date
ALTER TABLE Fact_Flights
ADD CONSTRAINT FK_Time
FOREIGN KEY (Date_ID) REFERENCES Time(Date_ID); 

