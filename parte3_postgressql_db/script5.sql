SELECT "Cajeros"."Cajero", "NomApels" as "Nombre_Cajero", SUM("Precio") as "Importe_Ventas"
FROM "Almacenes"."Venta", "Almacenes"."Productos", "Almacenes"."Cajeros"
WHERE "Venta"."Producto"="Productos"."Producto" and "Venta"."Cajero"="Cajeros"."Cajero"
GROUP BY "Cajeros"."Cajero"
ORDER By "Cajeros"."Cajero";