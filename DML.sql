-- Insertar en CerveZetas_Marca
INSERT INTO CerveZetas_Marca (codigo, nombre) VALUES (1, 'Desesperado');
INSERT INTO CerveZetas_Marca (codigo, nombre) VALUES (2, 'Koronao');
INSERT INTO CerveZetas_Marca (codigo, nombre) VALUES (3, 'CruzCiudad');
INSERT INTO CerveZetas_Marca (codigo, nombre) VALUES (4, 'Cervezas Alabhama');
INSERT INTO CerveZetas_Marca (codigo, nombre) VALUES (5, 'Paula-Ven');
INSERT INTO CerveZetas_Marca (codigo, nombre) VALUES (6, 'CashVerg');

-- Insertar en CerveZetas_Usuario

INSERT INTO CerveZetas_Usuario (codigo, nombreCompleto, contrasenya, email, fechaNacimiento, telefono, tipoUsuario, ultimaConexion)
VALUES (1, 'Pablo Verdu', 'Holamundo111', 'pabloverdu@admin.es', TO_DATE('31/12/2001', 'DD/MM/YYYY'), 600000001, 'Admin', SYSTIMESTAMP);

INSERT INTO CerveZetas_Usuario (codigo, nombreCompleto, contrasenya, email, fechaNacimiento, telefono, tipoUsuario, ultimaConexion)
VALUES (2, 'Mario Martínez', 'Holamundo112', 'mario@gmail.com', TO_DATE('16/12/2001', 'DD/MM/YYYY'), 600000002, 'Cliente', SYSTIMESTAMP);

INSERT INTO CerveZetas_Usuario (codigo, nombreCompleto, contrasenya, email, fechaNacimiento, telefono, tipoUsuario, ultimaConexion)
VALUES (3, 'Pablo Navarro', 'Holamundo113', 'pablon@gmail.com', TO_DATE('12/07/2001', 'DD/MM/YYYY'), 600000003, 'Cliente', SYSTIMESTAMP);

INSERT INTO CerveZetas_Usuario (codigo, nombreCompleto, contrasenya, email, fechaNacimiento, telefono, tipoUsuario, ultimaConexion)
VALUES (4, 'Pablo Beltrán', 'Holamundo114', 'pablob@gmail.com', TO_DATE('03/05/2001', 'DD/MM/YYYY'), 600000004, 'Cliente', SYSTIMESTAMP);

-- Insertar en CerveZetas_Producto

INSERT INTO CerveZetas_Producto (codigo, marca, nombre, descripcion, precio, unidadDeMedida, iva, stock, stockMinimo, foto, usuarioCrea, fechaCreacion, usuarioModifica, fechaModificacion)
VALUES (1, 1, 'Cerveza Desesperado IPA', 'Cerveza India Pale Ale intensamente lupulada y aromática.', 5.99, 'unidad', 21, 100, 10, 'https://i.ibb.co/N64CksJ/beer1.png', 1, SYSTIMESTAMP, 1, SYSTIMESTAMP);

INSERT INTO CerveZetas_Producto (codigo, marca, nombre, descripcion, precio, unidadDeMedida, iva, stock, stockMinimo, foto, usuarioCrea, fechaCreacion, usuarioModifica, fechaModificacion)
VALUES (2, 2, 'Cerveza Koronao Lager', 'Cerveza lager suave y refrescante.', 4.99, 'unidad', 21, 80, 10, 'https://i.ibb.co/2YZ84n4/beer6.png', 1, SYSTIMESTAMP, 1, SYSTIMESTAMP);

INSERT INTO CerveZetas_Producto (codigo, marca, nombre, descripcion, precio, unidadDeMedida, iva, stock, stockMinimo, foto, usuarioCrea, fechaCreacion, usuarioModifica, fechaModificacion)
VALUES (3, 3, 'Cerveza CruzCiudad Weissbier', 'Cerveza de trigo refrescante con notas a banana y clavo.', 6.99, 'unidad', 21, 120, 10, 'https://i.ibb.co/T2h8BsW/beer2.png', 1, SYSTIMESTAMP, 1, SYSTIMESTAMP);

INSERT INTO CerveZetas_Producto (codigo, marca, nombre, descripcion, precio, unidadDeMedida, iva, stock, stockMinimo, foto, usuarioCrea, fechaCreacion, usuarioModifica, fechaModificacion)
VALUES (4, 4, 'Cerveza Alabhama Red Ale', 'Cerveza de estilo Red Ale con sabor a caramelo y maltas tostadas.', 5.49, 'unidad', 21, 90, 10, 'https://i.ibb.co/6DHr5ns/beer3.png', 1, SYSTIMESTAMP, 1, SYSTIMESTAMP);

INSERT INTO CerveZetas_Producto (codigo, marca, nombre, descripcion, precio, unidadDeMedida, iva, stock, stockMinimo, foto, usuarioCrea, fechaCreacion, usuarioModifica, fechaModificacion)
VALUES (5, 5, 'Cerveza Paula-Ven Pale Ale', 'Cerveza Pale Ale con carácter y amargor equilibrado.', 6.49, 'unidad', 21, 110, 10, 'https://i.ibb.co/PtJ9VdS/beer4.png', 1, SYSTIMESTAMP, 1, SYSTIMESTAMP);

INSERT INTO CerveZetas_Producto (codigo, marca, nombre, descripcion, precio, unidadDeMedida, iva, stock, stockMinimo, foto, usuarioCrea, fechaCreacion, usuarioModifica, fechaModificacion)
VALUES (6, 6, 'Cerveza CashVerg Pilsner', 'Cerveza Pilsner clásica y refrescante.', 4.99, 'unidad', 21, 100, 10, 'https://i.ibb.co/KqFgtQV/beer5.png', 1, SYSTIMESTAMP, 1, SYSTIMESTAMP);




-- Insertar en CerveZetas_Direccion

INSERT INTO CerveZetas_Direccion (codigo, usuario, direccion, poblacion, provincia, cp)
VALUES (1, 2, 'Calle García Vaquero', 'Elda', 'Alicante', 03600);

INSERT INTO CerveZetas_Direccion (codigo, usuario, direccion, poblacion, provincia, cp)
VALUES (2, 3, 'Avenida Fray Luis de Granada', 'Elda', 'Alicante', 03600);

INSERT INTO CerveZetas_Direccion (codigo, usuario, direccion, poblacion, provincia, cp)
VALUES (3, 4, 'Plaza de la Constitución', 'Petrer', 'Alicante', 03610);

-- Insertar en CerveZetas_Pedido
INSERT INTO CerveZetas_Pedido (codigo, fecha, usuario, direccion, metodoPago)
VALUES (1, SYSTIMESTAMP, 2, 1, 'PayPal');

INSERT INTO CerveZetas_Pedido (codigo, fecha, usuario, direccion, metodoPago)
VALUES (2, SYSTIMESTAMP, 3, 2, 'Tarjeta');

-- Insertar en CerveZetas_Factura
INSERT INTO CerveZetas_Factura (codigo, fecha, direccion, pedidoAsociado)
VALUES (1, SYSTIMESTAMP, 1, 1);

INSERT INTO CerveZetas_Factura (codigo, fecha, direccion, pedidoAsociado)
VALUES (2, SYSTIMESTAMP, 2, 2);

-- Insertar una línea de pedido

CREATE SEQUENCE SEQ_CerveZetas_lineaPedido START WITH 1 INCREMENT BY 1;

INSERT INTO CerveZetas_lineaPedido (codigo, pedido, producto, cantidad)
VALUES (1, 1, 1, 2);


INSERT INTO CerveZetas_lineaPedido (codigo, pedido, producto, cantidad)
VALUES (2, 1, 2, 3);


INSERT INTO CerveZetas_lineaPedido (codigo, pedido, producto, cantidad)
VALUES (3, 2, 3, 1);

