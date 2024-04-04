-- Insertar datos en la tabla "client"
INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (1, 'Juan', 'Perez', '986532989', 'DNI', '12345678', 'juan@gmail.com', TO_DATE('25/07/1990', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (2, 'Ana', 'Gomez','969895963', 'CE', '123456789012', 'ana@gmail.com', TO_DATE('10/02/1985', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (3, 'Pedro', 'Lopez','979895968', 'DNI', '87654321', 'pedro@gmail.com', TO_DATE('15/09/1982', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (4, 'María', 'Torres','949596989', 'CE', '987654321012', 'maria@gmail.com', TO_DATE('03/11/1978', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (5, 'Carlos', 'Martinez','959698978', 'DNI', '48527569', 'carlos@gmail.com', TO_DATE('20/04/1995', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (6, 'Laura', 'Rodriguez','909293154', 'DNI', '47264896', 'laura@gmail.com', TO_DATE('12/12/1980', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (7, 'Eduardo', 'Sanchez','931521405', 'DNI', '15263658', 'eduardo@gmail.com', TO_DATE('30/06/1994', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (8, 'Susana', 'Fernandez','974852103', 'CE', '134578963598', 'susana@gmail.com', TO_DATE('05/03/1992', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (9, 'Roberto', 'Garcia','935845102', 'DNI', '78451245', 'roberto@gmail.com', TO_DATE('14/08/1997', 'DD/MM/YYYY'), '1');

INSERT INTO client (id, names, last_names, cellphone, type_document, number_document, email, birthdate, active)
VALUES (10, 'Luis', 'Diaz', '974114253', 'CE', '145589682634', 'luis@gmail.com', TO_DATE('28/01/1983', 'DD/MM/YYYY'), '1');

SELECT * FROM client;

-- Insertar datos en la tabla "product"
INSERT INTO product (id, name, description, price, type_product, creation_date, manufacturer, category, active)
SELECT * FROM
    (SELECT 1, 'Margarita', 'Coctel con tequila', 8.99, 'Copa', SYSDATE, 'Juan', 'Clasico', '1' FROM DUAL UNION ALL
    SELECT 2, 'Pina Colada', 'Coctel con ron', 9.99, 'Copa', SYSDATE, 'María', 'Tropical', '1' FROM DUAL UNION ALL
    SELECT 3, 'Mojito', 'Coctel con ron y menta', 7.99, 'Botella', SYSDATE, 'Carlos', 'Ron', '1' FROM DUAL UNION ALL
    SELECT 4, 'Daikiri', 'Coctel con ron y limon', 6.99, 'Jarra', SYSDATE, 'Elena', 'Ron', '1' FROM DUAL UNION ALL
    SELECT 5, 'Cosmopolitan', 'Coctel con vodka', 8.49, 'Jarra', SYSDATE, 'Roberto', 'Vodka', '1' FROM DUAL UNION ALL
    SELECT 6, 'Caipirinha', 'Coctel con cachaca', 7.49, 'Copa', SYSDATE, 'Ana', 'Clasico', '1' FROM DUAL UNION ALL
    SELECT 7, 'Pisco Sour', 'Coctel con pisco', 7.99, 'Jarra', SYSDATE, 'Jose', 'Clasico', '1' FROM DUAL UNION ALL
    SELECT 8, 'Martini', 'Coctel con ginebra', 9.49, 'Botella', SYSDATE, 'Laura', 'Whisky', '1' FROM DUAL UNION ALL
    SELECT 9, 'Mimosa', 'Coctel con champan', 6.99, 'Botella', SYSDATE, 'Francisco', 'Clasico', '1' FROM DUAL UNION ALL
    SELECT 10, 'Dry Martini', 'Dry martini con ginebra', 8.99, 'Copa', SYSDATE, 'Isabel', 'Whisky', '1' FROM DUAL);

SELECT * FROM product;

-- Insertar datos en la tabla "employee"
INSERT INTO employee (id, type_document, number_document, names, last_name, cell_phone, email, position, active)
SELECT 1, 'DNI', '45263514', 'Carlos', 'Perez', '923456789', 'carlos@gmail.com', 'C', '1' FROM DUAL UNION ALL
SELECT 2, 'CE', '152436197548', 'Ana', 'Gomez', '987654321', 'ana@gmail.com', 'B', '1' FROM DUAL UNION ALL
SELECT 3, 'DNI', '87654321', 'Pedro', 'Lopez', '955254725', 'pedro@gmail.com', 'M', '1' FROM DUAL UNION ALL
SELECT 4, 'CE', '987654321012', 'María', 'Torres', '985362147', 'maria@gmail.com', 'M', '1' FROM DUAL;

SELECT * FROM employee;

-- Insertar datos en la tabla "order"
INSERT INTO "order" (id, "date", "table", id_employee, id_client, type_payment, active)
SELECT * FROM
    (SELECT 1, TO_DATE('09/01/2023', 'DD/MM/YYYY'), 3, 2, 5, 'E', '1' FROM DUAL UNION ALL
    SELECT 2, TO_DATE('09/02/2023', 'DD/MM/YYYY'), 2, 4, 7, 'T', '1' FROM DUAL UNION ALL
    SELECT 3, TO_DATE('09/03/2023', 'DD/MM/YYYY'), 1, 1, 3, 'T', '1' FROM DUAL UNION ALL
    SELECT 4, TO_DATE('09/04/2023', 'DD/MM/YYYY'), 5, 3, 6, 'E', '1' FROM DUAL UNION ALL
    SELECT 5, TO_DATE('09/05/2023', 'DD/MM/YYYY'), 7, 2, 2, 'T', '1' FROM DUAL UNION ALL
    SELECT 6, TO_DATE('09/06/2023', 'DD/MM/YYYY'), 4, 1, 8, 'O', '1' FROM DUAL UNION ALL
    SELECT 7, TO_DATE('09/07/2023', 'DD/MM/YYYY'), 1, 2, 1, 'E', '1' FROM DUAL UNION ALL
    SELECT 8, TO_DATE('09/08/2023', 'DD/MM/YYYY'), 3, 3, 9, 'T', '1' FROM DUAL UNION ALL
    SELECT 9, TO_DATE('09/09/2023', 'DD/MM/YYYY'), 6, 4, 10, 'E', '1' FROM DUAL UNION ALL
    SELECT 10, TO_DATE('09/10/2023', 'DD/MM/YYYY'), 2, 2, 4, 'O', '1' FROM DUAL);


SELECT * FROM "order";

INSERT INTO order_detail (id, quantity, id_order, id_product, active)
SELECT id, quantity, id_order, id_product, active FROM
    (SELECT 1 as id, 3 as quantity, 1 as id_order, 1 as id_product, '1' as active FROM DUAL UNION ALL
    SELECT 2, 2, 2, 2, '1' FROM DUAL UNION ALL
    SELECT 3, 4, 3, 3, '1' FROM DUAL UNION ALL
    SELECT 4, 1, 4, 4, '1' FROM DUAL UNION ALL
    SELECT 5, 5, 5, 5, '1' FROM DUAL UNION ALL
    SELECT 6, 2, 6, 6, '1' FROM DUAL UNION ALL
    SELECT 7, 3, 7, 7, '1' FROM DUAL UNION ALL
    SELECT 8, 4, 8, 8, '1' FROM DUAL UNION ALL
    SELECT 9, 2, 9, 9, '1' FROM DUAL UNION ALL
    SELECT 10, 1, 10, 10, '1' FROM DUAL);


SELECT * FROM order_detail;
