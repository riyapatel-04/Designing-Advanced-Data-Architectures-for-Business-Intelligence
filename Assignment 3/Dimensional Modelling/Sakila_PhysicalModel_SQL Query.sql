--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      Model2.DM1
--
-- Date Created : Thursday, October 02, 2025 16:47:02
-- Target DBMS : Snowflake
--

-- 
-- TABLE: Category 
--

CREATE TABLE Category(
    "Category_Key (PK)"  INT             NOT NULL,
    Category_ID          INT,
    Category_Name        VARCHAR(100),
    CONSTRAINT PK10 PRIMARY KEY ("Category_Key (PK)") 
)
;



-- 
-- TABLE: Customer 
--

CREATE TABLE Customer(
    Customer_Key    INT             NOT NULL,
    Last_Name       VARCHAR(100),
    EmailID         VARCHAR(255),
    Customer_ID     INT,
    First_Name      VARCHAR(100),
    Address         VARCHAR(255),
    City            VARCHAR(100),
    Joining_Date    DATE,
    CONSTRAINT PK7 PRIMARY KEY (Customer_Key) 
)
;



-- 
-- TABLE: Date 
--

CREATE TABLE Date(
    "Date_Key (PK)"  INT     NOT NULL,
    Full_Date        DATE,
    Day              INT,
    Week             INT,
    Month            INT,
    Quarter          INT,
    Year             INT,
    CONSTRAINT PK5 PRIMARY KEY ("Date_Key (PK)") 
)
;



-- 
-- TABLE: Movie 
--

CREATE TABLE Movie(
    Movie_Key       INT             NOT NULL,
    Rating          VARCHAR(10),
    Length          INT,
    Language        VARCHAR(50),
    Release_Year    INT,
    Title           VARCHAR(255),
    Film_ID         INT,
    CONSTRAINT PK6 PRIMARY KEY (Movie_Key) 
)
;



-- 
-- TABLE: Rental 
--

CREATE TABLE Rental(
    "Rental_Key (PK)"    INT               NOT NULL,
    Movie_Key            INTEGER           NOT NULL,
    Customer_Key         INTEGER           NOT NULL,
    "Category_Key (PK)"  INTEGER           NOT NULL,
    "Store_Key (PK)"     INTEGER           NOT NULL,
    "Staff_Key (PK)"     INTEGER           NOT NULL,
    "Date_Key (PK)"      INTEGER           NOT NULL,
    Rental_Count         INT,
    Revenue              DECIMAL(10, 2),
    Days_Rented          INT,
    CONSTRAINT PK11 PRIMARY KEY ("Rental_Key (PK)", Movie_Key, Customer_Key, "Category_Key (PK)", "Store_Key (PK)", "Staff_Key (PK)", "Date_Key (PK)") 
)
;



-- 
-- TABLE: Staff 
--

CREATE TABLE Staff(
    "Staff_Key (PK)"  INT             NOT NULL,
    Staff_ID          INT,
    First_Name        VARCHAR(100),
    Last_Name         VARCHAR(100),
    Store_ID          INT,
    CONSTRAINT PK9 PRIMARY KEY ("Staff_Key (PK)") 
)
;



-- 
-- TABLE: Store 
--

CREATE TABLE Store(
    "Store_Key (PK)"  INT             NOT NULL,
    Store_ID          INT,
    Address           VARCHAR(255),
    City              VARCHAR(100),
    Country           VARCHAR(100),
    CONSTRAINT PK8 PRIMARY KEY ("Store_Key (PK)") 
)
;



-- 
-- TABLE: Rental 
--

ALTER TABLE Rental ADD CONSTRAINT RefCustomer21 
    FOREIGN KEY (Customer_Key)
    REFERENCES Customer(Customer_Key)
;

ALTER TABLE Rental ADD CONSTRAINT RefCategory31 
    FOREIGN KEY ("Category_Key (PK)")
    REFERENCES Category("Category_Key (PK)")
;

ALTER TABLE Rental ADD CONSTRAINT RefStore41 
    FOREIGN KEY ("Store_Key (PK)")
    REFERENCES Store("Store_Key (PK)")
;

ALTER TABLE Rental ADD CONSTRAINT RefStaff51 
    FOREIGN KEY ("Staff_Key (PK)")
    REFERENCES Staff("Staff_Key (PK)")
;

ALTER TABLE Rental ADD CONSTRAINT RefDate61 
    FOREIGN KEY ("Date_Key (PK)")
    REFERENCES Date("Date_Key (PK)")
;

ALTER TABLE Rental ADD CONSTRAINT RefMovie11 
    FOREIGN KEY (Movie_Key)
    REFERENCES Movie(Movie_Key)
;


