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
       
INSERT INTO "user" (user_id, dni, name, surname, genre, birthdate, address, photo, status)
VALUES ('c106366f-6819-4771-88b3-3d1016bab84d', '45678505D', 'Karen', 'Rojas', 'femenino', '1995-04-01', 'Calle Falsa 013', 'photo5.jpg', true); -- user recepcionista

       
-- Insertar datos de prueba en la tabla "client"
INSERT INTO client (client_id, user_id, phone, email, password)
VALUES ('3db9b8c5-deb0-4dc1-ac96-f464d7c87020', '9758da64-1484-4a08-9296-2cfa9eb43079', '555-555-5555', 'client1@example.com', 'password1'),
       ('a73d962a-25e9-4ebc-8b44-1a9ee06202af', '7418dbdb-b5b6-404a-b6ef-8842ca54fe77', '555-555-5556', 'client2@example.com', 'password2'),
       ('d9f6d433-7e12-416a-96a9-17c81bab5479', 'e47a7602-8af6-46cf-bb83-97a62c1639bc', '555-555-5557', 'client3@example.com', 'password3');
       
-- Insertar datos de prueba en la tabla "employee"
INSERT INTO employee (employee_id, labor_conditions, gross_salary, employment_code, email, password, phone, user_id)
VALUES ('de0b3914-d05d-400d-804c-71ae2cfb0fac', 'Condiciones laborales 1', 50000.00, 'Código de empleo 1', 'employee1@example.com', 'password1', '555-555-5555', 'e47a7602-8af6-46cf-bb83-97a62c1639bc'),
       ('c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', 'Condiciones laborales 2', 60000.00, 'Código de empleo 2', 'employee2@example.com', 'password2', '555-555-5555', '6357388d-82bf-4dc6-a760-3aaf1c001e6c');

INSERT INTO employee (employee_id, labor_conditions, gross_salary, employment_code, email, password, phone, user_id) VALUES ('21378ada-9845-48b6-8be1-691279f06550', 'Condiciones laborales 1', 50000.00, 'Código de empleo 1', 'employee3@example.com', 'password3', '555-555-5525', 'c106366f-6819-4771-88b3-3d1016bab84d');

-- Insertar datos de prueba en la tabla "pet"
INSERT INTO pet (pet_id, client_id, photo, name, birthdate, race, specie)
VALUES ('582ff702-4bc1-4ecc-81c6-7fdeaf24f626', '3db9b8c5-deb0-4dc1-ac96-f464d7c87020', 'photo1.jpg', 'Mascota 1', '2020-01-01', 'Raza 1', 'Especie 1'),
       ('7c269645-f381-43c2-8b17-437bee37bc22', '3db9b8c5-deb0-4dc1-ac96-f464d7c87020', 'photo2.jpg', 'Mascota 2', '2020-02-01', 'Raza 2', 'Especie 2'),
       ('45674882-b4e4-4be8-aa66-cad3471bda83', 'a73d962a-25e9-4ebc-8b44-1a9ee06202af', 'photo3.jpg', 'Mascota 3', '2020-03-01', 'Raza 3', 'Especie 3'),
       ('ed9cc695-aa05-4546-bde9-7e716189dd13', 'd9f6d433-7e12-416a-96a9-17c81bab5479', 'photo4.jpg', 'Mascota 4', '2020-04-01', 'Raza 4', 'Especie 4');

-- Insertar datos de prueba en la tabla "has_medicine"
INSERT INTO has_medicine (has_medicine_id, medicine_id, prescription_id, expedition_date, total_meditions)
VALUES ('5a91bb99-de4f-46a5-bdbf-c022360bd902', '9f7549ed-7c34-4267-94b8-ee91e9b773ab', '56b15801-4236-4938-b663-1bc12fd54c2b', '2023-11-08 08:45:00', 10),
       ('cf35b755-5c61-487e-84ef-789f44db154f', '8437916a-6d74-4ee3-b75d-4e87887813f3', 'f26d9316-0fa7-4c16-9595-8a128e818e93', '2023-11-08 09:15:00', 20);

-- Insertar datos de prueba en la tabla "surgical_material"
INSERT INTO surgical_material (surgical_material_id, barcode, description, medical_contraindications, observations)
VALUES ('cb3f7f5d-a156-4a82-8e2f-66d29b8d44a2', '1234567890', 'Material quirúrgico 1', 'Contraindicaciones médicas 1', 'Observaciones 1'),
       ('1eb7112c-3fd1-48c0-96d1-fb5c8d3c20cc', '0987654321', 'Material quirúrgico 2', 'Contraindicaciones médicas 2', 'Observaciones 2');

-- Insertar datos de prueba en la tabla "complementary_exploration"
INSERT INTO complementary_exploration (complementary_exploration_id, clinical_analysis_id, employee_id, finish_date, start_date, type_of_collection_tube, indications, origin, observations, interference, reference_values, technical_record, increase, decrease)
VALUES ('61d6fe2b-afa5-4709-93bf-8b6109185852', '4477f100-e7a7-478c-a660-0c0b3d79c460', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', '2023-11-08 08:45:00', '2023-11-08 08:30:00', 'tubo con heparina de litio', 'Indicaciones 1', 'Origen 1', 'Observaciones 1', 'Interferencia 1', 'Valores de referencia 1', 'Registro técnico 1', 1, 2),
       ('f2a5f550-99be-4f83-af01-c234c4acb6ee', '7b214794-d6bb-4eda-8bb8-2ccaac4c7fc0', 'c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', '2023-11-08 09:15:00', '2023-11-08 09:00:00', 'tubo sin anticoagulante', 'Indicaciones 2', 'Origen 2', 'Observaciones 2', 'Interferencia 2', 'Valores de referencia 2', 'Registro técnico 2', 3, 4);

-- Insertar datos de prueba en la tabla "attend"
INSERT INTO attend (attend_id, pet_id, employee_id, presumptive_diagnosis)
VALUES ('85f64ca1-04c7-4057-a940-3bfa228e2748', '582ff702-4bc1-4ecc-81c6-7fdeaf24f626', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', 'Diagnóstico presuntivo 1'),
       ('d6b9e656-5c91-4980-802a-15ae0e331dcd', 'ed9cc695-aa05-4546-bde9-7e716189dd13', 'c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', 'Diagnóstico presuntivo 2');

-- Insertar datos de prueba en la tabla "interviene_surgically"
INSERT INTO interviene_surgically (interviene_surgically_id, pet_id, employee_id, start_time, end_time, previous_elements, anesthic_procedure, possible_risks, complications, port_surgical_monitoring)
VALUES ('2cbe5e66-270d-4519-90a4-93e09e16e3c8', '582ff702-4bc1-4ecc-81c6-7fdeaf24f626', 'c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', '2023-11-08 08:45:00', '2023-11-08 09:15:00', 'Elementos previos 1', 'Procedimiento anestésico 1', 'Riesgos posibles 1', 'Complicaciones 1', 'Monitoreo portátil 1'),
       ('642a2f35-7e36-44c3-b090-db7ef7470128', 'ed9cc695-aa05-4546-bde9-7e716189dd13', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', '2023-11-08 09:45:00', '2023-11-08 10:15:00', 'Elementos previos 2', 'Procedimiento anestésico 2', 'Riesgos posibles 2', 'Complicaciones 2', 'Monitoreo portátil 2');

-- Insertar datos de prueba en la tabla "used_material"
INSERT INTO used_material (used_material_id, employee_id, surgical_material_id, amount, date)
VALUES ('f4177df1-590a-4cdc-bf9b-085f0af7cfb4', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', 'cb3f7f5d-a156-4a82-8e2f-66d29b8d44a2', 10.5, '2023-11-08 08:45:00'),
       ('68fa6ab7-7455-4c0b-82d9-8f0970e40bd6', 'c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', '1eb7112c-3fd1-48c0-96d1-fb5c8d3c20cc', 20.5, '2023-11-08 09:15:00');

-- Insertar datos de prueba en la tabla "perform_analysis"
INSERT INTO perform_analysis (perform_analysis_id, analysis_id, pet_id, consecutive_code, who_collected, observations, shopping_date, "procedure")
VALUES ('7678946b-b9d0-47c6-bc18-3d8bace896a0', '2905b557-cd05-41e7-89a2-d125bf7d5b09', '582ff702-4bc1-4ecc-81c6-7fdeaf24f626', 1, 'Quién recolectó 1', 'Observaciones 1', '2023-11-08 08:45:00', 'Procedimiento 1'),
       ('9b8a051c-14f9-4d91-8843-39775c00065d', '6bce2d5f-df2b-479a-ad51-249c5ee62485', 'ed9cc695-aa05-4546-bde9-7e716189dd13', 2, 'Quién recolectó 2', 'Observaciones 2', '2023-11-08 09:15:00', 'Procedimiento 2');

-- Insertar datos de prueba en la tabla "vaccine"
INSERT INTO vaccine (vaccine_id, vaccine_barcode, posible_reaction, observation)
VALUES ('e3d8573c-b7ac-4bc8-bdf6-6051f9735c32', 'Código de barras 1', 'Reacción posible 1', 'Observación 1'),
       ('8eed4e92-12e7-457d-8e3b-70d2f3d0b611', 'Código de barras 2', 'Reacción posible 2', 'Observación 2');

-- Insertar datos de prueba en la tabla "vaccination_record"
INSERT INTO vaccination_record (vaccination_record_id, vaccine_id, pet_id, date)
VALUES ('7eb9391f-4ac3-4358-a295-9893de50ae00', 'e3d8573c-b7ac-4bc8-bdf6-6051f9735c32', '582ff702-4bc1-4ecc-81c6-7fdeaf24f626', '2023-11-08 08:45:00'),
       ('3aa9ad29-3210-415b-8abb-5a7f34d65e58', '8eed4e92-12e7-457d-8e3b-70d2f3d0b611', 'ed9cc695-aa05-4546-bde9-7e716189dd13', '2023-11-08 09:15:00');
       
-- Insertar datos de prueba en la tabla "indicate"
INSERT INTO indicate (indicate_id, analysis_id, employee_id, medical_code, reason, date)
VALUES ('6c4de90c-a21d-4cb9-93f3-5698a1faa079', '2905b557-cd05-41e7-89a2-d125bf7d5b09', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', 'Código médico 1', 'Razón 1', '2023-11-08 08:45:00'),
       ('88e48e10-22b7-4c8e-a98f-15c54af4e13b', '6bce2d5f-df2b-479a-ad51-249c5ee62485', 'c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', 'Código médico 2', 'Razón 2', '2023-11-08 09:15:00');

INSERT INTO deliver (deliver_id, prescription_id, pet_id, prescription_date)
VALUES ('5c89d625-25e7-4eda-945d-24cef7f8d3b9', '56b15801-4236-4938-b663-1bc12fd54c2b', '582ff702-4bc1-4ecc-81c6-7fdeaf24f626', '2023-11-08 08:45:00'),
       ('1e61f487-4552-4d95-9b15-da0ae93093b9', 'f26d9316-0fa7-4c16-9595-8a128e818e93', 'ed9cc695-aa05-4546-bde9-7e716189dd13', '2023-11-08 09:15:00');
       
-- Insertar datos de prueba en la tabla "general_consultation_departament"
INSERT INTO deparment (deparment_id, name, description, hours_of_operations, consultation_cost)
VALUES ('836c768b-dd6e-4f19-b85e-aeac85e394e4', 'Departamento nombre 1', 'Descripción del departamento de consulta general 1', 'horario 1', 50.00);

INSERT INTO deparment (deparment_id, name, description, hours_of_operations, consultation_cost)
VALUES ('db223b55-b73d-4efe-b7de-5e87f7f5a8f3', 'Departamento nombre 2', 'Descripción del departamento de consulta general 2', 'horario 1', 60.00);


-- Insertar datos de prueba en la tabla "general_consultation"
INSERT INTO general_consultation (general_consultation_id, deparment_id, booking_date, blood_pressure, reason, pet_id, schenduling_by, assigned_to, heart_rate, observations, status, breathing_frequency, body_temperatura, history_clinic_url)
VALUES ('a9523f6d-2f4e-4878-b823-fcd6a0050f8e', '836c768b-dd6e-4f19-b85e-aeac85e394e4', '2023-11-08 08:45:00', '120/80', 'Razón 1', '7c269645-f381-43c2-8b17-437bee37bc22', '21378ada-9845-48b6-8be1-691279f06550', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', 70, 'Observaciones 1', 'completed', 20, 36, 'https://www.historiaclinica.com/paciente/1'),
       ('90434e01-8fd6-4f2d-a304-44debd2f3edb', '836c768b-dd6e-4f19-b85e-aeac85e394e4', '2023-11-08 09:15:00', '130/90', 'Razón 2', 'ed9cc695-aa05-4546-bde9-7e716189dd13', '21378ada-9845-48b6-8be1-691279f06550', 'c4fc3cfa-c7e9-48ed-8e05-bbc02f797829', 80, 'Observaciones 2', 'pending', 25, 37, 'https://www.historiaclinica.com/paciente/2');

-- Insertar datos de prueba en la tabla "do_image_test"
INSERT INTO do_image_test (do_image_test_id, employee_id, image_test_id, finish_date, start_date, imaging_specialist_diagnostics, observations)
VALUES ('3fbc2878-5af7-4b8d-a346-86898b535ca5', '21378ada-9845-48b6-8be1-691279f06550', 'b87122f1-fa4c-4bc4-b676-5fb8f1b6d5d1', '2023-11-08 08:45:00', '2023-11-08 08:30:00', 'Diagnóstico especialista en imágenes 1', 'Observaciones 1'),
       ('e646b89c-28e6-4cb8-9bd2-56cf13378017', '21378ada-9845-48b6-8be1-691279f06550', 'd5376554-69e5-4d8c-8a9d-eee13b60a7d6', '2023-11-08 09:15:00', '2023-11-08 09:00:00', 'Diagnóstico especialista en imágenes 2', 'Observaciones 2');

-- Insertar datos de prueba en la tabla "emergency"
INSERT INTO emergency (emergency_id, emergency_departament_id, heart_rate, pet_id, breathing_recuency, reason, blood_pressure, assigned_to, body_temperatura, schenduling_by, status, history_clinic_url)
VALUES ('f645eb97-41aa-43a5-b1c5-d7c51cb725c1', 'db223b55-b73d-4efe-b7de-5e87f7f5a8f3', 80, '582ff702-4bc1-4ecc-81c6-7fdeaf24f626', 20, 'Emergencia 1', '130/90', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', 38, '21378ada-9845-48b6-8be1-691279f06550', 'active', 'https://www.historiaclinica.com/paciente/3'),
       ('002dddf8-ffed-4ce3-8e3f-1d7543dee8dc', 'db223b55-b73d-4efe-b7de-5e87f7f5a8f3', 90, '45674882-b4e4-4be8-aa66-cad3471bda83', 25, 'Emergencia 2', '140/100', 'de0b3914-d05d-400d-804c-71ae2cfb0fac', 39, '21378ada-9845-48b6-8be1-691279f06550', 'completed', 'https://www.historiaclinica.com/paciente/4');
       