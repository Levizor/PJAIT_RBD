-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-06-01 16:23:46.396

-- foreign keys
ALTER TABLE Employee
    DROP CONSTRAINT Agent_Person;

ALTER TABLE Balance_History
    DROP CONSTRAINT Balance_History_Tenant;

ALTER TABLE ContractOwner
    DROP CONSTRAINT ContractOwner_Employee;

ALTER TABLE ContractOwner
    DROP CONSTRAINT ContractOwner_Owner;

ALTER TABLE ContractOwner
    DROP CONSTRAINT ContractOwner_RealEstate;

ALTER TABLE ContractTenant
    DROP CONSTRAINT ContractTenant_Employee;

ALTER TABLE ContractTenant
    DROP CONSTRAINT ContractTenant_RealEstate;

ALTER TABLE ContractTenant
    DROP CONSTRAINT Contract_Tenant;

ALTER TABLE EmployeePosition
    DROP CONSTRAINT EmployeePosition_Employee;

ALTER TABLE EmployeePosition
    DROP CONSTRAINT EmployeePosition_Position;

ALTER TABLE Language_Person
    DROP CONSTRAINT Languages_Person_Languages;

ALTER TABLE Language_Person
    DROP CONSTRAINT Languages_Person_Person;

ALTER TABLE Owner
    DROP CONSTRAINT Owner_Person;

ALTER TABLE RS_Status_History
    DROP CONSTRAINT RS_Status_History_RealEstate;

ALTER TABLE RS_Status_History
    DROP CONSTRAINT RS_Status_Status;

ALTER TABLE RealEstate
    DROP CONSTRAINT RealEstate_RS_Type;

ALTER TABLE RealEstate
    DROP CONSTRAINT RealEstate_RealEstate;

ALTER TABLE Tenant
    DROP CONSTRAINT Tenant_Person;

-- tables
DROP TABLE Balance_History;

DROP TABLE ContractOwner;

DROP TABLE ContractTenant;

DROP TABLE Employee;

DROP TABLE EmployeePosition;

DROP TABLE Language;

DROP TABLE Language_Person;

DROP TABLE Owner;

DROP TABLE Person;

DROP TABLE Position;

DROP TABLE RS_Status_History;

DROP TABLE RS_Type;

DROP TABLE RealEstate;

DROP TABLE Status;

DROP TABLE Tenant;

-- End of file.

