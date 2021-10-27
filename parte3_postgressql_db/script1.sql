-- Cajeros
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (1, 'Carlos Sánchez');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (2, 'Verónica Medina');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (3, 'Gabriela Smith');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (4, 'Héctor Acosta');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (5, 'Luis Pérez');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (6, 'José Salinas');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (7, 'Margarita López');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (8, 'Gustavo Contreras');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (9, 'Gonzalo Ruiz');
INSERT INTO "Almacenes"."Cajeros"(
	"Cajero", "NomApels")
	VALUES (10, 'Pedro Hurtado');
	
-- Maquinas Registradoras
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (1, 1);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (2, 1);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (3, 1);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (4, 2);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (5, 2);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (6, 2);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (7, 3);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (8, 3);
INSERT INTO "Almacenes"."Maquinas_Registradoras"(
	"Maquina", "Piso")
	VALUES (9, 3);

-- Productos
INSERT INTO "Almacenes"."Productos"(
	"Producto", "Nombre", "Precio")
	VALUES (1, 'Televisor', 2500);
INSERT INTO "Almacenes"."Productos"(
	"Producto", "Nombre", "Precio")
	VALUES (2, 'Camisa', 300);
INSERT INTO "Almacenes"."Productos"(
	"Producto", "Nombre", "Precio")
	VALUES (3, 'Pantalón', 500);
INSERT INTO "Almacenes"."Productos"(
	"Producto", "Nombre", "Precio")
	VALUES (4, 'Radio', 1000);
INSERT INTO "Almacenes"."Productos"(
	"Producto", "Nombre", "Precio")
	VALUES (5, 'Teléfono', 1200);
INSERT INTO "Almacenes"."Productos"(
	"Producto", "Nombre", "Precio")
	VALUES (6, 'Zapatos', 800);

-- Venta
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (1, 1, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (1, 1, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (1, 2, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (1, 3, 3);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (2, 6, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (2, 7, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (2, 4, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (2, 2, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (2, 8, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (2, 9, 5);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (3, 2, 5);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (3, 2, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (3, 6, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (3, 6, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (3, 5, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (4, 5, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (4, 5, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (4, 5, 3);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (4, 6, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (5, 6, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (5, 3, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (5, 3, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (5, 1, 5);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (5, 4, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (5, 8, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (5, 3, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (6, 2, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (6, 3, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (6, 1, 3);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (6, 7, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (8, 1, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (9, 1, 3);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (9, 1, 3);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (9, 3, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (9, 3, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (9, 6, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (10, 2, 4);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (10, 5, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (10, 7, 2);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (10, 4, 1);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (10, 2, 6);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (10, 1, 5);
INSERT INTO "Almacenes"."Venta"(
	"Cajero", "Maquina", "Producto")
	VALUES (10, 9, 3);
