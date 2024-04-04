--Subconsulta escalar
--Obetener el total de clientes activos 
SELECT (
    SELECT COUNT(*) 
    FROM client 
    WHERE active = '1'
) AS total_clientes_activos 
FROM dual;

--Obtener la edad promedio de los clientes que acuden
SELECT (
    SELECT AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birthdate)) 
    FROM client
) AS edad_promedio 
FROM dual;

--Subconsulta clausula From

--Consulta para obtener el correo electrónico por ID
SELECT email
FROM client
WHERE id = 5; 

--Consulta para obtener la edad de cada cliente
SELECT id, names, last_names, 
       EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birthdate) AS edad
FROM client;

--Consulta para obtener el número total de clientes por tipo de documento:
SELECT type_document, COUNT(*) AS total_clientes
FROM client
GROUP BY type_document;

