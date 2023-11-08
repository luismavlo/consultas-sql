-- Insertar datos de prueba en la tabla "analysis"
INSERT INTO analysis (code_analysis, technical_record, aplication_date, reference_code, techique_used, bilogical_regulation, client_signature, description)
VALUES ('2905b557-cd05-41e7-89a2-d125bf7d5b09', 'Registro técnico 1', '2023-11-08 08:30:00', 'quimica sanguinea', 'Técnica 1', 'Regulación biológica 1', 'Firma del cliente 1', 'Descripción 1'),
       ('6bce2d5f-df2b-479a-ad51-249c5ee62485', 'Registro técnico 2', '2023-11-08 09:00:00', 'biometria hematica', 'Técnica 2', 'Regulación biológica 2', 'Firma del cliente 2', 'Descripción 2');


-- Insertar datos de prueba en la tabla "image_technique"
INSERT INTO image_technique (image_technique, description, application_form, risk_values, application_position, advance_preparation)
VALUES ('7db0c48a-d340-41a5-81fe-71ddf0091d5f', 'Descripción de la técnica de imagen 1', 'Formulario de aplicación 1', 'muy riesgoso', 'Posición de aplicación 1', 'Preparación previa 1'),
       ('e5742b87-7bdf-46f2-97fd-d8f709f9f8aa', 'Descripción de la técnica de imagen 2', 'Formulario de aplicación 2', 'riesgoso', 'Posición de aplicación 2', 'Preparación previa 2');


-- Insertar datos de prueba en la tabla "image_test"
INSERT INTO image_test (image_test_id, analysis_id, image_technique, consecutive_number, aplication_date, technical_record, description)
VALUES ('b87122f1-fa4c-4bc4-b676-5fb8f1b6d5d1', '2905b557-cd05-41e7-89a2-d125bf7d5b09', '7db0c48a-d340-41a5-81fe-71ddf0091d5f', 1, '2023-11-08 08:45:00', 'Registro técnico 3', 'Descripción 3'),
       ('d5376554-69e5-4d8c-8a9d-eee13b60a7d6', '6bce2d5f-df2b-479a-ad51-249c5ee62485', 'e5742b87-7bdf-46f2-97fd-d8f709f9f8aa', 2, '2023-11-08 09:15:00', 'Registro técnico 4', 'Descripción 4');


-- Insertar datos de prueba en la tabla "clinical_analysis"
INSERT INTO clinical_analysis (clinical_analysis_id, analysis_id, requested_exam, consecutive_number, technical_record, presumptive_diagnosis)
VALUES ('4477f100-e7a7-478c-a660-0c0b3d79c460', '2905b557-cd05-41e7-89a2-d125bf7d5b09', 'Examen solicitado 1', 1, 'Registro técnico 5', 'Diagnóstico presuntivo 1'),
       ('7b214794-d6bb-4eda-8bb8-2ccaac4c7fc0', '6bce2d5f-df2b-479a-ad51-249c5ee62485', 'Examen solicitado 2', 2, 'Registro técnico 6', 'Diagnóstico presuntivo 2');

-- Insertar datos de prueba en la tabla "pharmacy"
INSERT INTO pharmacy (pharmacy_id, address, phone, email)
VALUES ('cd6e8c80-d96a-439d-9d8c-7d6d5b05297b', '123 Main St, Anytown, USA', '555-555-5555', 'pharmacy@example.com'),
       ('f9a0d2f9-048e-4f51-8a0c-ed399c09e9b9', '456 Elm St, Anytown, USA', '555-555-5555', 'pharmacy@example.com');

-- Insertar datos de prueba en la tabla "prescription"
INSERT INTO prescription (prescription_id, pharmacy_id, prescription_code, diagnosis, observation)
VALUES ('56b15801-4236-4938-b663-1bc12fd54c2b', 'cd6e8c80-d96a-439d-9d8c-7d6d5b05297b', 'RX12345', 'Diagnóstico 1', 'Observación 1'),
       ('f26d9316-0fa7-4c16-9595-8a128e818e93', 'f9a0d2f9-048e-4f51-8a0c-ed399c09e9b9', 'RX67890', 'Diagnóstico 2', 'Observación 2');

-- Insertar datos de prueba en la tabla "dispense"
INSERT INTO dispense (dispense_id, pharmacy_id, prescription_id, sale_date, observation, total_medications)
VALUES ('63641289-bb21-4a50-929d-c0b01adf742a', 'cd6e8c80-d96a-439d-9d8c-7d6d5b05297b', '56b15801-4236-4938-b663-1bc12fd54c2b', '2023-11-08 08:45:00', 'Observación 3', 10),
       ('db0d885d-18d3-4d5e-b7ed-ff6c3a2d4dc6', 'f9a0d2f9-048e-4f51-8a0c-ed399c09e9b9', 'f26d9316-0fa7-4c16-9595-8a128e818e93', '2023-11-08 09:15:00', 'Observación 4', 20);

-- Insertar datos de prueba en la tabla "medicine"
INSERT INTO medicine (medicine_id, medication_code, due_date, packaging_type, date_of_elaboration)
VALUES ('9f7549ed-7c34-4267-94b8-ee91e9b773ab', 'MED12345', '2024-11-08 08:45:00', 'Tipo de empaque 1', '2023-11-08 08:45:00'),
       ('8437916a-6d74-4ee3-b75d-4e87887813f3', 'MED67890', '2024-11-08 09:15:00', 'Tipo de empaque 2', '2023-11-08 09:15:00');

INSERT INTO "user" (user_id, dni, name, surname, genre, birthdate, address, photo, status)
VALUES ('9758da64-1484-4a08-9296-2cfa9eb43079', '12345678A', 'Juan', 'Pérez', 'masculino', '1990-01-01', 'Calle Falsa 123', 'photo1.jpg', true), -- user cliente
       ('7418dbdb-b5b6-404a-b6ef-8842ca54fe77', '23456789B', 'María', 'García', 'femenino', '1995-02-01', 'Calle Falsa 456', 'photo2.jpg', true), -- user cliente
       ('e47a7602-8af6-46cf-bb83-97a62c1639bc', '34567890C', 'Pedro', 'González', 'masculino', '2000-03-01', 'Calle Falsa 789', 'photo3.jpg', true), --user medico y cliente
       ('6357388d-82bf-4dc6-a760-3aaf1c001e6c', '45678901D', 'Ana', 'Martínez', 'femenino', '2005-04-01', 'Calle Falsa 012', 'photo4.jpg', true); -- user medico

       
-- Insertar datos de prueba en la tabla "client"
INSERT INTO client (client_id, user_id, phone, email, password)
VALUES ('3db9b8c5-deb0-4dc1-ac96-f464d7c87020', '9758da64-1484-4a08-9296-2cfa9eb43079', '555-555-5555', 'client1@example.com', 'password1'),
       ('a73d962a-25e9-4ebc-8b44-1a9ee06202af', '7418dbdb-b5b6-404a-b6ef-8842ca54fe77', '555-555-5556', 'client2@example.com', 'password2'),
       ('d9f6d433-7e12-416a-96a9-17c81bab5479', 'e47a7602-8af6-46cf-bb83-97a62c1639bc', '555-555-5557', 'client3@example.com', 'password3');
       
-- Insertar datos de prueba en la tabla "employee"
INSERT INTO employee (employee_id, labor_conditions, gross_salary, employment_code, email, password, phone, user_id)
VALUES ('de0b3914-d05d-400d-804c-71ae2cfb0fac', 'Condiciones laborales 1', 50000.00, 'Código de empleo 1', 'employee1@example.com', 'password1', '555-555-5555', 'e47a7602-8af6-46cf-bb83-97a62c1639bc'),
       ('c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', 'Condiciones laborales 2', 60000.00, 'Código de empleo 2', 'employee2@example.com', 'password2', '555-555-5555', '6357388d-82bf-4dc6-a760-3aaf1c001e6c');



-- Insertar datos de prueba en la tabla "pet"
INSERT INTO pet (pet_id, client_id, photo, name, birthdate, race, specie)
VALUES ('582ff702-4bc1-4ecc-81c6-7fdeaf24f626', '3db9b8c5-deb0-4dc1-ac96-f464d7c87020', 'photo1.jpg', 'Mascota 1', '2020-01-01', 'Raza 1', 'Especie 1'),
       ('7c269645-f381-43c2-8b17-437bee37bc22', '3db9b8c5-deb0-4dc1-ac96-f464d7c87020', 'photo2.jpg', 'Mascota 2', '2020-02-01', 'Raza 2', 'Especie 2'),
       ('45674882-b4e4-4be8-aa66-cad3471bda83', 'a73d962a-25e9-4ebc-8b44-1a9ee06202af', 'photo3.jpg', 'Mascota 3', '2020-03-01', 'Raza 3', 'Especie 3'),
       ('ed9cc695-aa05-4546-bde9-7e716189dd13', 'd9f6d433-7e12-416a-96a9-17c81bab5479', 'photo4.jpg', 'Mascota 4', '2020-04-01', 'Raza 4', 'Especie 4');