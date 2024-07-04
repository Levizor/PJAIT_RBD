-- Insert data into the Person table
INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (1, 'John', 'Doe', DATE '1985-01-15', DATE '2020-05-20', '1234567890');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (2, 'Jane', 'Smith', DATE '1990-06-25', DATE '2020-06-10', '0987654321');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (3, 'Alice', 'Johnson', DATE '1975-02-10', DATE '2020-07-15', '5556667777');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (4, 'Bob', 'Brown', DATE '1980-08-30', DATE '2020-08-01', '4445556666');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (5, 'Charlie', 'Davis', DATE '1995-11-05', DATE '2020-09-25', '3334445555');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (6, 'Diana', 'Miller', DATE '1988-03-12', DATE '2020-10-05', '2223334444');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (7, 'Ethan', 'Wilson', DATE '1979-09-20', DATE '2020-11-15', '1112223333');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (8, 'Fiona', 'Anderson', DATE '1983-04-18', DATE '2020-12-10', '9998887777');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (9, 'George', 'Martinez', DATE '1992-07-08', DATE '2021-01-05', '8889990000');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (10, 'Hannah', 'Taylor', DATE '1970-12-03', DATE '2021-02-20', '7778889999');

INSERT INTO Person (person_id, first_name, last_name, date_of_birth, registration_date, phone_number)
VALUES (11, 'Ian', 'Clark', DATE '1986-05-28', DATE '2021-03-15', '6667778888');


-- Insert data into the Employee table
INSERT INTO Employee (person_id, insurance_number)
VALUES (1, 'INS123456789');

INSERT INTO Employee (person_id, insurance_number)
VALUES (2, 'INS987654321');

INSERT INTO Employee (person_id, insurance_number)
VALUES (7, 'INS123456789');


-- Insert data into the Tenant table
INSERT INTO Tenant (person_id, penalty_points, balance)
VALUES (3, 0, 1000);

INSERT INTO Tenant (person_id, penalty_points, balance)
VALUES (4, 2, 500);

INSERT INTO Tenant (person_id, penalty_points, balance)
VALUES (5, 0, 1500);

INSERT INTO Tenant (person_id, penalty_points, balance)
VALUES (8, 1, 2000);

INSERT INTO Tenant (person_id, penalty_points, balance)
VALUES (9, 3, 700);

INSERT INTO Tenant (person_id, penalty_points, balance)
VALUES (10, 0, 1200);


-- Insert data into the Owner table
INSERT INTO Owner (person_id, income)
VALUES (6, 50000);

INSERT INTO Owner (person_id, income)
VALUES (11, 65000);

-- Insert data into the RS_Type table
INSERT INTO RS_Type (id, type)
VALUES (1, 'Shared Flat');

INSERT INTO RS_Type (id, type)
VALUES (2, 'Individual Flat');

-- Insert data into the RealEstate table
INSERT INTO RealEstate (rs_id, address, parent_rs_id, rent_price, RS_Type_id)
VALUES (1, 'Wolska 101/2 3', NULL, 1200, 1);

INSERT INTO RealEstate (rs_id, address, parent_rs_id, rent_price, RS_Type_id)
VALUES (2, 'Wolska 101/2 3/1', 1, 1500, 2);

INSERT INTO RealEstate (rs_id, address, rent_price, RS_Type_id)
VALUES (3, 'Staszica 10', 1000, 2);

INSERT INTO RealEstate (rs_id, address, rent_price, RS_Type_id)
VALUES (4, 'Noblina 11', 2000, 2);

INSERT INTO RealEstate (rs_id, address, parent_rs_id, rent_price, RS_Type_id)
VALUES (5, 'Sunset Boulevard 123', NULL, 3000, 2);

INSERT INTO RealEstate (rs_id, address, rent_price, RS_Type_id)
VALUES (6, 'Moonlight Avenue 456',  2500, 2);

INSERT INTO RealEstate (rs_id, address,  rent_price, RS_Type_id)
VALUES (7, 'Andromeda Lane 88/2', 2200, 1);

INSERT INTO RealEstate (rs_id, address, rent_price, RS_Type_id)
VALUES (8, 'Galaxy Road 101',  3500, 2);

INSERT INTO RealEstate (rs_id, address, rent_price, RS_Type_id)
VALUES (9, 'Milky Way 55', 2000, 2);

INSERT INTO RealEstate (rs_id, address, parent_rs_id, rent_price, RS_Type_id)
VALUES (10, 'Andromeda Lane 88/2 1', 10, 2800, 1);

-- Insert data into the ContractOwner table
-- Assigning the new owner to manage real estates 9 to 12
INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (3, 7, 1, 6, DATE '2023-03-01', DATE '2024-03-01', 1200);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (1, 1, 2, 6, DATE '2023-01-01', DATE '2024-01-01', 1000);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (2, 2, 3, 6, DATE '2023-02-01', DATE '2024-02-01', 800);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (4, 7, 4, 6, DATE '2023-04-01', DATE '2024-04-01', 1100);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (5, 2, 5, 6, DATE '2023-05-01', DATE '2024-05-01', 1300);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (6, 1, 6, 6, DATE '2023-06-01', DATE '2024-06-01', 1400);

-- Assigning the specified owner to manage the remaining real estates
INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (7, 1, 7, 11, DATE '2023-03-01', DATE '2024-03-01', 1200);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (8, 2, 8, 11, DATE '2023-04-01', DATE '2024-04-01', 1100);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (9, 7, 9, 11, DATE '2023-05-01', DATE '2024-05-01', 1300);

INSERT INTO ContractOwner (contract_id, agent_id, rs_id, owner_id, signing_date, expiration_date, income)
VALUES (10, 2, 10, 11, DATE '2023-06-01', DATE '2024-06-01', 1400);


-- Insert data into the ContractTenant table
INSERT INTO ContractTenant (contract_id, agent_id, rs_id, tenant_id, signing_date, expiration_date, deposit, rent)
VALUES (1, 1, 1, 4, DATE '2023-01-01', DATE '2024-01-01', 2000, 1200);

INSERT INTO ContractTenant (contract_id, agent_id, rs_id, tenant_id, signing_date, expiration_date, deposit, rent)
VALUES (2, 1, 2, 5, DATE '2023-02-01', DATE '2024-02-01', 2000, 1000);

-- Assigning each tenant to their respective real estate
INSERT INTO ContractTenant (contract_id, agent_id, rs_id, tenant_id, signing_date, expiration_date, deposit, rent)
VALUES (3, 2, 3, 3, DATE '2023-03-01', DATE '2024-03-01', 1500, 1500);

INSERT INTO ContractTenant (contract_id, agent_id, rs_id, tenant_id, signing_date, expiration_date, deposit, rent)
VALUES (4, 2, 4, 8, DATE '2023-04-01', DATE '2024-04-01', 1800, 2000);

INSERT INTO ContractTenant (contract_id, agent_id, rs_id, tenant_id, signing_date, expiration_date, deposit, rent)
VALUES (5, 7, 5, 9, DATE '2023-05-01', DATE '2024-05-01', 1700, 1800);

INSERT INTO ContractTenant (contract_id, agent_id, rs_id, tenant_id, signing_date, expiration_date, deposit, rent)
VALUES (6, 7, 6, 10, DATE '2023-06-01', DATE '2024-06-01', 1900, 1600);


-- Insert data into the Balance_History table
INSERT INTO Balance_History (id, tenant_id, "date", difference, add_info)
VALUES (1, 3, TIMESTAMP '2023-03-01 10:00:00', -1200, 'Monthly rent payment');

INSERT INTO Balance_History (id, tenant_id, "date", difference, add_info)
VALUES (2, 3, TIMESTAMP '2023-04-01 10:00:00', -1200, 'Monthly rent payment');

INSERT INTO Balance_History (id, tenant_id, "date", difference, add_info)
VALUES (3, 4, TIMESTAMP '2023-03-01 11:00:00', -150, 'Penalty for late payment');

INSERT INTO Balance_History (id, tenant_id, "date", difference, add_info)
VALUES (4, 4, TIMESTAMP '2023-04-01 11:00:00', -1600, 'Monthly rent payment');

INSERT INTO Balance_History (id, tenant_id, "date", difference, add_info)
VALUES (5, 5, TIMESTAMP '2023-05-01 10:00:00', -1700, 'Monthly rent payment');

INSERT INTO Balance_History (id, tenant_id, "date", difference, add_info)
VALUES (6, 5, TIMESTAMP '2023-06-01 10:00:00', -1700, 'Monthly rent payment');

INSERT INTO Balance_History (id, tenant_id, "date", difference, add_info)
VALUES (7, 6, TIMESTAMP '2023-07-01 11:00:00', -1900, 'Monthly rent payment');

-- Insert data into the Position table
INSERT INTO Position (position_id, position)
VALUES (1, 'Agent');

INSERT INTO Position (position_id, position)
VALUES (2, 'Manager');


-- Insert data into the EmployeePosition table
INSERT INTO EmployeePosition (position_id, employee_id, DATEFROM,  salary)
VALUES (1, 1, DATE '2022-01-01',  3000);

INSERT INTO EmployeePosition (position_id, employee_id, DATEFROM, salary)
VALUES (2, 2, DATE '2022-01-01', 3500);

INSERT INTO EMPLOYEEPOSITION(position_id, employee_id, datefrom, salary)
VALUES (1, 7, DATE '2023-01-05', 4500)

-- Insert data into the Language table
INSERT INTO Language (language_id, language)
VALUES (1, 'English');

INSERT INTO Language (language_id, language)
VALUES (2, 'Polish');

INSERT INTO LANGUAGE(LANGUAGE_ID, LANGUAGE)
VALUES (3, 'Spanish')

-- Insert data into the Language_Person table
INSERT INTO Language_Person (language_id, person_id)
VALUES (1, 1);

INSERT INTO Language_Person (language_id, person_id)
VALUES (2, 2);

INSERT INTO Language_Person (language_id, person_id)
VALUES (1, 3);

INSERT INTO Language_Person (language_id, person_id)
VALUES (2, 4);

-- Assigning languages to persons
INSERT INTO Language_Person (language_id, person_id)
VALUES (1, 5); -- Person 5 speaks language with ID 1

INSERT INTO Language_Person (language_id, person_id)
VALUES (1, 6); -- Person 6 speaks language with ID 1

INSERT INTO Language_Person (language_id, person_id)
VALUES (2, 7); -- Person 7 speaks language with ID 2

INSERT INTO Language_Person (language_id, person_id)
VALUES (2, 8); -- Person 8 speaks language with ID 2

INSERT INTO Language_Person (language_id, person_id)
VALUES (3, 9); -- Person 9 speaks language with ID 3

INSERT INTO Language_Person (language_id, person_id)
VALUES (3, 10); -- Person 10 speaks language with ID 3

INSERT INTO Language_Person (language_id, person_id)
VALUES (1, 11); -- Person 11 speaks language with ID 1

-- Insert data into the Status table
INSERT INTO Status (id, status)
VALUES (1, 'Available');

INSERT INTO Status (id, status)
VALUES (2, 'Occupied');

INSERT INTO STATUS (ID, STATUS)
VALUES (3, 'Renovation')


-- Insert data into the RS_Status_History table
INSERT INTO RS_Status_History (id, Status_id, rs_id, dateFrom)
VALUES (1, 1, 1, DATE '2023-01-01');

INSERT INTO RS_Status_History (id, Status_id, rs_id, dateFrom)
VALUES (2, 2, 2, DATE '2023-02-01');
-- Inserting additional status records for real estates
INSERT INTO RS_Status_History (id, Status_id, rs_id, dateFrom)
VALUES (3, 1, 3, DATE '2023-03-01');

INSERT INTO RS_Status_History (id, Status_id, rs_id, dateFrom)
VALUES (4, 2, 4, DATE '2023-04-01');

INSERT INTO RS_Status_History (id, Status_id, rs_id, dateFrom)
VALUES (5, 1, 5, DATE '2023-05-01');

INSERT INTO RS_Status_History (id, Status_id, rs_id, dateFrom)
VALUES (6, 2, 6, DATE '2023-06-01');
commit