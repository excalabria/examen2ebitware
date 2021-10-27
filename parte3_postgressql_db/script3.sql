SELECT "NomApels" as "Nombre_Cajero", "Productos"."Nombre" as "Nombre_Producto", "Precio",  "Piso"
FROM "Almacenes"."Venta", "Almacenes"."Cajeros", "Almacenes"."Maquinas_Registradoras","Almacenes"."Productos"
WHERE "Venta"."Cajero"="Cajeros"."Cajero" and "Venta"."Producto"="Productos"."Producto" and "Venta"."Maquina"="Maquinas_Registradoras"."Maquina"
ORDER BY "Piso";