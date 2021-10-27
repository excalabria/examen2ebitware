SELECT "Piso", SUM("Precio") as "Ganancias_Piso"
FROM "Almacenes"."Venta", "Almacenes"."Productos", "Almacenes"."Maquinas_Registradoras"
WHERE "Venta"."Producto"="Productos"."Producto" and "Venta"."Maquina"="Maquinas_Registradoras"."Maquina"
GROUP BY "Piso"
ORDER By "Piso";