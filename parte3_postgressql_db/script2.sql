SELECT COUNT("Venta"."Producto") as "Cantidad_Producto_Vendido", "Venta"."Producto", "Nombre" as "Nombre_Producto"
FROM "Almacenes"."Venta", "Almacenes"."Productos"
WHERE "Venta"."Producto" = "Productos"."Producto"
GROUP BY "Venta"."Producto", "Nombre"
ORDER BY COUNT("Venta"."Producto") DESC;