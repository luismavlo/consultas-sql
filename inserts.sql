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