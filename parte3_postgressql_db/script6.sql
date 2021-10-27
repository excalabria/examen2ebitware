SELECT DISTINCT("Venta"."Cajero"), "NomApels"
FROM "Almacenes"."Maquinas_Registradoras", "Almacenes"."Venta", "Almacenes"."Cajeros",
(
	SELECT "Piso"
	FROM (
		SELECT "Piso", SUM("Precio") as "Ganancias_Piso"
		FROM "Almacenes"."Venta", "Almacenes"."Productos", "Almacenes"."Maquinas_Registradoras"
		WHERE "Venta"."Producto"="Productos"."Producto" and "Venta"."Maquina"="Maquinas_Registradoras"."Maquina"
		GROUP BY "Piso"
	) as "GanancuasPiso"
	WHERE "Ganancias_Piso" < '5000'
) as "PisosVentas"
WHERE "Maquinas_Registradoras"."Piso" = "PisosVentas"."Piso" and "Venta"."Maquina"="Maquinas_Registradoras"."Maquina" 
and "Venta"."Cajero"="Cajeros"."Cajero";