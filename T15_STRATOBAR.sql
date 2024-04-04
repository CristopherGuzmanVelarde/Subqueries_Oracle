-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-02-26 03:32:40.989

-- tables
-- Table: client
CREATE TABLE client (
    id int  NOT NULL,
    names varchar2(60)  NOT NULL,
    last_names varchar2(90)  NOT NULL,
    cellphone char(9)  NOT NULL,
    type_document char(3)  NOT NULL,
    number_document char(15)  NOT NULL,
    email varchar2(80)  NOT NULL,
    birthdate date  NOT NULL,
    active char(1)  NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (id)
) ;


-- Table: employee
CREATE TABLE employee (
    id int  NOT NULL,
    type_document char(3)  NOT NULL,
    number_document char(15)  NOT NULL,
    names varchar2(60)  NOT NULL,
    last_name varchar2(90)  NOT NULL,
    cell_phone char(9)  NOT NULL,
    email varchar2(80)  NOT NULL,
    position char(1)  NOT NULL,
    active char(1)  NOT NULL,
    CONSTRAINT empleado_pk PRIMARY KEY (id)
) ;

-- Table: order
CREATE TABLE "order" (
    id int  NOT NULL,
    "date" date  NOT NULL,
    "table" int  NOT NULL,
    id_employee int  NOT NULL,
    id_client int  NOT NULL,
    type_payment char(1)  NOT NULL,
    active char(1)  NOT NULL,
    CONSTRAINT orden_pk PRIMARY KEY (id)
) ;

-- Table: order_detail
CREATE TABLE order_detail (
    id int  NOT NULL,
    quantity int  NOT NULL,
    id_order int  NOT NULL,
    id_product int  NOT NULL,
    active char(1)  NOT NULL,
    CONSTRAINT detalle_orden_pk PRIMARY KEY (id)
) ;

-- Table: product
CREATE TABLE product (
    id int  NOT NULL,
    name varchar2(120)  NOT NULL,
    description varchar2(120)  NOT NULL,
    price decimal(10,2)  NOT NULL,
    type_product varchar2(20)  NOT NULL,
    creation_date date  NOT NULL,
    manufacturer varchar2(100)  NOT NULL,
    category varchar2(50)  NOT NULL,
    active char(1)  NOT NULL,
    CONSTRAINT producto_pk PRIMARY KEY (id)
) ;

-- foreign keys
-- Reference: DETALLE_ORDEN_ORDEN (table: order_detail)
ALTER TABLE order_detail ADD CONSTRAINT DETALLE_ORDEN_ORDEN
    FOREIGN KEY (id_order)
    REFERENCES "order" (id);

-- Reference: DETALLE_ORDEN_PRODUCTO (table: order_detail)
ALTER TABLE order_detail ADD CONSTRAINT DETALLE_ORDEN_PRODUCTO
    FOREIGN KEY (id_product)
    REFERENCES product (id);

-- Reference: ORDEN_EMPLEADO (table: order)
ALTER TABLE "order" ADD CONSTRAINT ORDEN_EMPLEADO
    FOREIGN KEY (id_employee)
    REFERENCES employee (id);

-- Reference: orden_cliente (table: order)
ALTER TABLE "order" ADD CONSTRAINT orden_cliente
    FOREIGN KEY (id_client)
    REFERENCES client (id);

-- End of file.