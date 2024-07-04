-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-06-01 16:46:23.048

-- tables
-- Table: Balance_History
CREATE TABLE Balance_History (
    id integer  NOT NULL,
    tenant_id integer  NOT NULL,
    "date" timestamp  NOT NULL,
    difference integer  NOT NULL,
    add_info nvarchar2(500)  NOT NULL,
    CONSTRAINT Balance_History_pk PRIMARY KEY (id)
) ;

-- Table: ContractOwner
CREATE TABLE ContractOwner (
    contract_id integer  NOT NULL,
    agent_id integer  NOT NULL,
    rs_id integer  NOT NULL,
    owner_id integer  NOT NULL,
    signing_date date  NOT NULL,
    expiration_date date  NOT NULL,
    income number(6,0)  NOT NULL,
    CONSTRAINT ContractOwner_pk PRIMARY KEY (contract_id)
) ;

-- Table: ContractTenant
CREATE TABLE ContractTenant (
    contract_id integer  NOT NULL,
    tenant_id integer  NOT NULL,
    agent_id integer  NOT NULL,
    rs_id integer  NOT NULL,
    signing_date date  NOT NULL,
    expiration_date date  NOT NULL,
    deposit number(6,0)  NOT NULL,
    rent number(6,0)  NOT NULL,
    CONSTRAINT ContractTenant_pk PRIMARY KEY (contract_id)
) ;

-- Table: Employee
CREATE TABLE Employee (
    person_id integer  NOT NULL,
    insurance_number nvarchar2(15)  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (person_id)
) ;

-- Table: EmployeePosition
CREATE TABLE EmployeePosition (
    position_id integer  NOT NULL,
    employee_id integer  NOT NULL,
    dateFrom date  NOT NULL,
    dateTo date  NULL,
    salary number(6,0)  NOT NULL,
    CONSTRAINT EmployeePosition_pk PRIMARY KEY (position_id,employee_id)
) ;

-- Table: Language
CREATE TABLE Language (
    language_id integer  NOT NULL,
    language nvarchar2(100)  NOT NULL,
    CONSTRAINT Language_pk PRIMARY KEY (language_id)
) ;

-- Table: Language_Person
CREATE TABLE Language_Person (
    language_id integer  NOT NULL,
    person_id integer  NOT NULL,
    CONSTRAINT Language_Person_pk PRIMARY KEY (language_id,person_id)
) ;

-- Table: Owner
CREATE TABLE Owner (
    person_id integer  NOT NULL,
    income number(6,0)  NOT NULL,
    CONSTRAINT Owner_pk PRIMARY KEY (person_id)
) ;

-- Table: Person
CREATE TABLE Person (
    person_id integer  NOT NULL,
    first_name nvarchar2(200)  NOT NULL,
    last_name nvarchar2(200)  NOT NULL,
    date_of_birth date  NOT NULL,
    registration_date date  NOT NULL,
    phone_number nvarchar2(12)  NOT NULL,
    CONSTRAINT Person_pk PRIMARY KEY (person_id)
) ;

-- Table: Position
CREATE TABLE Position (
    position_id integer  NOT NULL,
    position nvarchar2(30)  NOT NULL,
    CONSTRAINT Position_pk PRIMARY KEY (position_id)
) ;

-- Table: RS_Status_History
CREATE TABLE RS_Status_History (
    id integer  NOT NULL,
    Status_id integer  NOT NULL,
    rs_id integer  NOT NULL,
    dateFrom date  NOT NULL,
    CONSTRAINT RS_Status_History_pk PRIMARY KEY (id)
) ;

-- Table: RS_Type
CREATE TABLE RS_Type (
    id integer  NOT NULL,
    type nvarchar2(30)  NOT NULL,
    CONSTRAINT RS_Type_pk PRIMARY KEY (id)
) ;

-- Table: RealEstate
CREATE TABLE RealEstate (
    rs_id integer  NOT NULL,
    address nvarchar2(300)  NOT NULL,
    parent_rs_id integer  NULL,
    rent_price number(6,0)  NOT NULL,
    RS_Type_id integer  NOT NULL,
    CONSTRAINT RealEstate_pk PRIMARY KEY (rs_id)
) ;

-- Table: Status
CREATE TABLE Status (
    id integer  NOT NULL,
    status nvarchar2(100)  NOT NULL,
    CONSTRAINT Status_pk PRIMARY KEY (id)
) ;

-- Table: Tenant
CREATE TABLE Tenant (
    person_id integer  NOT NULL,
    penalty_points number(3,0)  NOT NULL,
    balance number(6,0)  NOT NULL,
    CONSTRAINT Tenant_pk PRIMARY KEY (person_id)
) ;

-- foreign keys
-- Reference: Agent_Person (table: Employee)
ALTER TABLE Employee ADD CONSTRAINT Agent_Person
    FOREIGN KEY (person_id)
    REFERENCES Person (person_id);

-- Reference: Balance_History_Tenant (table: Balance_History)
ALTER TABLE Balance_History ADD CONSTRAINT Balance_History_Tenant
    FOREIGN KEY (tenant_id)
    REFERENCES Tenant (person_id);

-- Reference: ContractOwner_Employee (table: ContractOwner)
ALTER TABLE ContractOwner ADD CONSTRAINT ContractOwner_Employee
    FOREIGN KEY (agent_id)
    REFERENCES Employee (person_id);

-- Reference: ContractOwner_Owner (table: ContractOwner)
ALTER TABLE ContractOwner ADD CONSTRAINT ContractOwner_Owner
    FOREIGN KEY (owner_id)
    REFERENCES Owner (person_id);

-- Reference: ContractOwner_RealEstate (table: ContractOwner)
ALTER TABLE ContractOwner ADD CONSTRAINT ContractOwner_RealEstate
    FOREIGN KEY (rs_id)
    REFERENCES RealEstate (rs_id);

-- Reference: ContractTenant_Employee (table: ContractTenant)
ALTER TABLE ContractTenant ADD CONSTRAINT ContractTenant_Employee
    FOREIGN KEY (agent_id)
    REFERENCES Employee (person_id);

-- Reference: ContractTenant_RealEstate (table: ContractTenant)
ALTER TABLE ContractTenant ADD CONSTRAINT ContractTenant_RealEstate
    FOREIGN KEY (rs_id)
    REFERENCES RealEstate (rs_id);

-- Reference: Contract_Tenant (table: ContractTenant)
ALTER TABLE ContractTenant ADD CONSTRAINT Contract_Tenant
    FOREIGN KEY (tenant_id)
    REFERENCES Tenant (person_id);

-- Reference: EmployeePosition_Employee (table: EmployeePosition)
ALTER TABLE EmployeePosition ADD CONSTRAINT EmployeePosition_Employee
    FOREIGN KEY (employee_id)
    REFERENCES Employee (person_id);

-- Reference: EmployeePosition_Position (table: EmployeePosition)
ALTER TABLE EmployeePosition ADD CONSTRAINT EmployeePosition_Position
    FOREIGN KEY (position_id)
    REFERENCES Position (position_id);

-- Reference: Languages_Person_Languages (table: Language_Person)
ALTER TABLE Language_Person ADD CONSTRAINT Languages_Person_Languages
    FOREIGN KEY (language_id)
    REFERENCES Language (language_id);

-- Reference: Languages_Person_Person (table: Language_Person)
ALTER TABLE Language_Person ADD CONSTRAINT Languages_Person_Person
    FOREIGN KEY (person_id)
    REFERENCES Person (person_id);

-- Reference: Owner_Person (table: Owner)
ALTER TABLE Owner ADD CONSTRAINT Owner_Person
    FOREIGN KEY (person_id)
    REFERENCES Person (person_id);

-- Reference: RS_Status_History_RealEstate (table: RS_Status_History)
ALTER TABLE RS_Status_History ADD CONSTRAINT RS_Status_History_RealEstate
    FOREIGN KEY (rs_id)
    REFERENCES RealEstate (rs_id);

-- Reference: RS_Status_Status (table: RS_Status_History)
ALTER TABLE RS_Status_History ADD CONSTRAINT RS_Status_Status
    FOREIGN KEY (Status_id)
    REFERENCES Status (id);

-- Reference: RealEstate_RS_Type (table: RealEstate)
ALTER TABLE RealEstate ADD CONSTRAINT RealEstate_RS_Type
    FOREIGN KEY (RS_Type_id)
    REFERENCES RS_Type (id);

-- Reference: RealEstate_RealEstate (table: RealEstate)
ALTER TABLE RealEstate ADD CONSTRAINT RealEstate_RealEstate
    FOREIGN KEY (parent_rs_id)
    REFERENCES RealEstate (rs_id);

-- Reference: Tenant_Person (table: Tenant)
ALTER TABLE Tenant ADD CONSTRAINT Tenant_Person
    FOREIGN KEY (person_id)
    REFERENCES Person (person_id);

-- End of file.

