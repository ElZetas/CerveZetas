/*CERVEZETAS*/




create table CerveZetas_Marca(
    codigo number(5) primary key,
    nombre varchar2(20)
);

CREATE TABLE CerveZetas_Usuario (
    codigo NUMBER primary key,
    nombreCompleto VARCHAR2(100),
    contrasenya VARCHAR2(100),
    email VARCHAR2(100),
    fechaNacimiento DATE,
    telefono NUMBER,
    tipoUsuario VARCHAR2(50),
    ultimaConexion TIMESTAMP,
    CHECK (tipoUsuario in('Cliente', 'Admin', 'Anonimo'))
);



CREATE TABLE CerveZetas_Producto (
    codigo NUMBER primary key,
    marca NUMBER,
    nombre VARCHAR2(100),
    descripcion VARCHAR2(200),
    precio NUMBER,
    unidadDeMedida VARCHAR2(50),
    iva NUMBER,
    stock NUMBER,
    stockMinimo NUMBER,
    foto VARCHAR2(200),
    usuarioCrea NUMBER,
    fechaCreacion TIMESTAMP,
    usuarioModifica NUMBER, 
    fechaModificacion TIMESTAMP,
    CONSTRAINT fk_marca
        FOREIGN KEY (marca)
        REFERENCES CerveZetas_Marca (codigo),
    CONSTRAINT fk_usuarioCrea
        FOREIGN KEY (usuarioCrea)
        REFERENCES CerveZetas_Usuario (codigo),
    CONSTRAINT fk_usuarioModifica
        FOREIGN KEY (usuarioModifica)
        REFERENCES CerveZetas_Usuario (codigo)
);


CREATE TABLE CerveZetas_Direccion (
    codigo NUMBER primary key,
    usuario NUMBER NOT NULL,
    direccion VARCHAR2(200),
    poblacion VARCHAR2(100),
    provincia VARCHAR2(100),
    cp NUMBER,

    CONSTRAINT fk_usuario
        FOREIGN KEY (usuario)
        REFERENCES CerveZetas_Usuario (codigo)
);



CREATE TABLE CerveZetas_Pedido (
    codigo NUMBER primary key,
    fecha TIMESTAMP,
    usuario NUMBER, 
    direccion NUMBER, 
    metodoPago varchar2(20), 

    CHECK (metodoPago in ('PayPal', 'Tarjeta', 'Moneda Virtual')),


    CONSTRAINT fk_usuario_pedido
        FOREIGN KEY (usuario)
        REFERENCES CerveZetas_Usuario (codigo),
    CONSTRAINT fk_direccion
        FOREIGN KEY (direccion)
        REFERENCES CerveZetas_Direccion (codigo)

);

CREATE TABLE CerveZetas_Factura (
    codigo NUMBER primary key,
    fecha TIMESTAMP,
    direccion NUMBER, 
    pedidoAsociado NUMBER, 

    CONSTRAINT fk_direccion_factura
        FOREIGN KEY (direccion)
        REFERENCES CerveZetas_Direccion (codigo),
    CONSTRAINT fk_pedidoAsociado
        FOREIGN KEY (pedidoAsociado)
        REFERENCES CerveZetas_Pedido (codigo)
);

CREATE TABLE CerveZetas_lineaPedido
(
  codigo    NUMBER,
  producto  NUMBER,
  pedido    NUMBER,
  cantidad  NUMBER,
  PRIMARY KEY (codigo, producto, pedido),
  CONSTRAINT FK_PEDIDO
    FOREIGN KEY (pedido)
    REFERENCES CerveZetas_Pedido (codigo),
  CONSTRAINT FK_PRODUCTO
    FOREIGN KEY (producto)
    REFERENCES CerveZetas_Producto (codigo)
);









drop table CerveZetas_lineaPedido;
drop table CerveZetas_Factura;
drop table CerveZetas_Pedido;
drop table CerveZetas_Direccion;
drop table CerveZetas_Producto;
drop table CerveZetas_Marca;
drop table CerveZetas_Usuario;


