-- CREATE DATABASE SDG;
-- USE SDG;-- Table for Households
-- CREATE TABLE Households (
--    HouseholdID INT PRIMARY KEY,
-- HeadOfHousehold VARCHAR(100),
--    IncomeLevel DECIMAL(10, 2),
--    FamilySize INT
-- );

-- Table for Housing Units
-- CREATE TABLE HousingUnits (
--    UnitID INT PRIMARY KEY,
--    Location VARCHAR(255),
--    Cost DECIMAL(10, 2),
--    Size INT,
--    SafetyStatus VARCHAR(50)
-- );

-- Table for Service Providers
-- CREATE TABLE ServiceProviders (
--    ProviderID INT PRIMARY KEY,
--    ServiceType VARCHAR(100),
--    ContactInfo VARCHAR(255)
-- );

-- Table for Safety Reports
-- CREATE TABLE SafetyReports (
--    ReportID INT PRIMARY KEY,
--    UnitID INT,
--    ReportDate DATE,
--    IncidentType VARCHAR(100),
--    Severity VARCHAR(50),
--    FOREIGN KEY (UnitID) REFERENCES HousingUnits(UnitID)
-- );

-- Table for Government Programs
-- CREATE TABLE GovernmentPrograms (
--    ProgramID INT PRIMARY KEY,
--    ProgramName VARCHAR(255),
--    EligibilityCriteria VARCHAR(255),
--    BenefitAmount DECIMAL(10, 2)
-- );

-- Relationship between Households and Housing Units
-- ALTER TABLE Households
-- ADD CONSTRAINT FK_HousingUnit
-- FOREIGN KEY (HouseholdID) REFERENCES HousingUnits(UnitID);

-- Drop the existing foreign key constraint
-- ALTER TABLE Households DROP FOREIGN KEY FK_HousingUnit;

-- Add a new column for UnitID to reference HousingUnits
-- ALTER TABLE Households ADD UnitID INT;

-- Recreate the foreign key constraint with the correct relationship
-- ALTER TABLE Households
-- ADD CONSTRAINT FK_HousingUnit
-- FOREIGN KEY (UnitID) REFERENCES HousingUnits(UnitID);

-- INSERT INTO HousingUnits (UnitID, Location, Cost, Size, SafetyStatus) VALUES
-- (1, 'Kibera', 50.00, 40, 'Unsafe'),
-- (2, 'Mathare', 30.00, 30, 'Moderate'),
-- (3, 'Kawangware', 20.00, 20, 'Safe'),
-- (4, 'Dandora', 25.00, 25, 'Moderate'),
-- (5, 'Huruma', 35.00, 35, 'Unsafe'),
-- (6, 'Githurai', 45.00, 50, 'Safe'),
-- (7, 'Mukuru', 55.00, 55, 'Unsafe'),
-- (8, 'Pipeline', 60.00, 60, 'Moderate'),
-- (9, 'Rongai', 70.00, 65, 'Safe'),
-- (10, 'Kahawa West', 80.00, 70, 'Safe'),
-- (11, 'Kibera', 52.00, 42, 'Unsafe'),
-- (12, 'Mathare', 32.00, 33, 'Moderate'),
-- (13, 'Kawangware', 22.00, 22, 'Safe'),
-- (14, 'Dandora', 27.00, 28, 'Moderate'),
-- (15, 'Huruma', 37.00, 38, 'Unsafe'),
-- (16, 'Githurai', 47.00, 53, 'Safe'),
-- (17, 'Mukuru', 57.00, 57, 'Unsafe'),
-- (18, 'Pipeline', 62.00, 62, 'Moderate'),
-- (19, 'Rongai', 72.00, 68, 'Safe'),
-- (20, 'Kahawa West', 85.00, 75, 'Safe');

-- INSERT INTO Households (HouseholdID, HeadOfHousehold, IncomeLevel, FamilySize, UnitID) VALUES
-- (1, 'John Doe', 500.00, 5, 1),
-- (2, 'Jane Smith', 300.00, 3, 2),
-- (3, 'Peter Njenga', 100.00, 4, 3),
-- (4, 'Mary Atieno', 200.00, 6, 4),
-- (5, 'James Mwangi', 450.00, 2, 5),
-- (6, 'Lucy Wambui', 150.00, 3, 6),
-- (7, 'Michael Otieno', 350.00, 7, 7),
-- (8, 'Nancy Njeri', 250.00, 4, 8),
-- (9, 'David Kimani', 120.00, 5, 9),
-- (10, 'Catherine Wanjiku', 400.00, 6, 10),
-- (11, 'Joseph Njoroge', 510.00, 5, 11),
-- (12, 'Grace Muthoni', 320.00, 3, 12),
-- (13, 'Paul Onyango', 110.00, 4, 13),
-- (14, 'Ann Wangari', 220.00, 6, 14),
-- (15, 'Charles Otieno', 460.00, 2, 15),
-- (16, 'Esther Akinyi', 160.00, 3, 16),
-- (17, 'George Ochieng', 370.00, 7, 17),
-- (18, 'Rose Wanjiru', 270.00, 4, 18),
-- (19, 'Samuel Karanja', 130.00, 5, 19),
-- (20, 'Alice Mwikali', 410.00, 6, 20),
-- (21, 'Simon Kipkorir', 520.00, 5, 1),
-- (22, 'Joyce Mburu', 330.00, 3, 2),
-- (23, 'Mark Maina', 115.00, 4, 3),
-- (24, 'Beatrice Nyambura', 230.00, 6, 4),
-- (25, 'Edward Kariuki', 470.00, 2, 5),
-- (26, 'Dorothy Nyokabi', 170.00, 3, 6),
-- (27, 'Victor Mwenda', 380.00, 7, 7),
-- (28, 'Hannah Wambui', 280.00, 4, 8),
-- (29, 'Patrick Ndung\'u', 140.00, 5, 9),
-- (30, 'Eunice Mumbi', 420.00, 6, 10),
-- (31, 'Dennis Ogola', 530.00, 5, 11),
-- (32, 'Agnes Otieno', 340.00, 3, 12),
-- (33, 'Kelvin Wafula', 120.00, 4, 13),
-- (34, 'Margaret Achieng', 240.00, 6, 14),
-- (35, 'Amos Nyaberi', 480.00, 2, 15),
-- (36, 'Ruth Waithera', 180.00, 3, 16),
-- (37, 'Silas Mbugua', 390.00, 7, 17),
-- (38, 'Irene Wanjohi', 290.00, 4, 18),
-- (39, 'Martin Omondi', 150.00, 5, 19),
-- (40, 'Lilian Kilonzo', 430.00, 6, 20);

-- INSERT INTO ServiceProviders (ProviderID, ServiceType, ContactInfo) VALUES
-- (1, 'Water Supply', 'water@provider.com'),
-- (2, 'Sanitation', 'sanitation@provider.com'),
-- (3, 'Electricity', 'electricity@provider.com'),
-- (4, 'Waste Management', 'waste@provider.com'),
-- (5, 'Security', 'security@provider.com'),
-- (6, 'Health Services', 'health@provider.com'),
-- (7, 'Fire Department', 'fire@provider.com'),
-- (8, 'Public Transport', 'transport@provider.com'),
-- (9, 'Education', 'education@provider.com'),
-- (10, 'Telecommunication', 'telecom@provider.com');

-- INSERT INTO SafetyReports (ReportID, UnitID, ReportDate, IncidentType, Severity) VALUES
-- (1, 1, '2024-01-01', 'Fire', 'High'),
-- (2, 2, '2024-02-15', 'Building Collapse', 'Medium'),
-- (3, 3, '2024-03-20', 'Flooding', 'High'),
-- (4, 4, '2024-04-10', 'Robbery', 'Low'),
-- (5, 5, '2024-05-25', 'Fire', 'Medium'),
-- (6, 6, '2024-06-30', 'Building Collapse', 'High'),
-- (7, 7, '2024-07-15', 'Flooding', 'Medium'),
-- (8, 8, '2024-08-05', 'Robbery', 'High'),
-- (9, 9, '2024-09-10', 'Fire', 'Low'),
-- (10, 10, '2024-10-20', 'Building Collapse', 'Medium'),
-- (11, 11, '2024-11-15', 'Flooding', 'High'),
-- (12, 12, '2024-12-25', 'Robbery', 'Medium'),
-- (13, 13, '2025-01-05', 'Fire', 'High'),
-- (14, 14, '2025-02-14', 'Building Collapse', 'Low'),
-- (15, 15, '2025-03-12', 'Flooding', 'Medium'),
-- (16, 16, '2025-04-21', 'Robbery', 'High'),
-- (17, 17, '2025-05-30', 'Fire', 'Low'),
-- (18, 18, '2025-06-15', 'Building Collapse', 'Medium'),
-- (19, 19, '2025-07-24', 'Flooding', 'High'),
-- (20, 20, '2025-08-11', 'Robbery', 'Medium');

-- INSERT INTO GovernmentPrograms (ProgramID, ProgramName, EligibilityCriteria, BenefitAmount) VALUES
-- (1, 'Affordable Housing Scheme', 'Low Income', 1000.00),
-- (2, 'Safety Improvement Grant', 'Unsafe Housing', 500.00),
-- (3, 'Sanitation Enhancement Program', 'High Population Density', 750.00),
-- (4, 'Energy Subsidy Program', 'Low Income', 1200.00),
-- (5, 'Water Access Initiative', 'Low Access to Water', 850.00),
-- (6, 'Fire Safety Program', 'High Risk Areas', 600.00),
-- (7, 'Education Support Program', 'Low Income Families', 350.00);

-- Part 3:SQL programming
-- 3.1:Data Retrival

-- SELECT H.HouseholdID, H.HeadOfHousehold, HU.Location, HU.Cost, HU.SafetyStatus
-- FROM Households H
-- JOIN HousingUnits HU ON H.HouseholdID = HU.UnitID;

-- SELECT S.ReportID, HU.Location, S.ReportDate, S.IncidentType, S.Severity
-- FROM SafetyReports S
-- JOIN HousingUnits HU ON S.UnitID = HU.UnitID;

-- SELECT H.HouseholdID, H.HeadOfHousehold, G.ProgramName, G.BenefitAmount
-- FROM Households H
-- JOIN GovernmentPrograms G ON H.IncomeLevel < 500 AND G.EligibilityCriteria = 'Low Income';

-- 3.2:Data Analysis
-- SELECT COUNT(H.HouseholdID) AS UnsafeHouseholds
-- FROM Households H
-- JOIN HousingUnits HU ON H.HouseholdID = HU.UnitID
-- WHERE HU.SafetyStatus = 'Unsafe';

-- SELECT HU.Location, COUNT(S.ReportID) AS IncidentCount
-- FROM SafetyReports S
-- JOIN HousingUnits HU ON S.UnitID = HU.UnitID
-- GROUP BY HU.Location;

-- SELECT Location, AVG(Cost) AS AvgCost
-- FROM HousingUnits
-- GROUP BY Location;





