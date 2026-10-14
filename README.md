Auditoría de Inventario y Ventas — MiniStore 🛒


Respuestas a las Preguntas de Negocio

1. ¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería?
Se utiliza LEFT JOIN para garantizar que se obtenga la tabla 'productos' sin importar si registran o no transacciones.
No es conveniente utilizar INNER JOIN porque se perderían productos que no registran ventas ya que no habría coincidencias con la tabla de la derecha o principal 'ventas',
por lo tanto no se podría visualizar stock sin rotación.


2. ¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha?
En este caso se utiliza RIGHT JOIN para priorizar la información de la tabla 'ventas'(situada a la derecha), asegurando la visualización de todas las transacciones,
permitiendo visualizar aquellas cuyo id de producto vendido no existe originalmente en la tabla 'productos', la cual está situada a la izquierda.


3. ¿Qué representan los valores NULL en cada resultado?
En la consulta 1: Representan articulos que nunca han sido vendidos, por lo que su totalidad de stock está disponible.
En la consulta 2: Representan transacciones erróneas ya que muestran productos que no están registrados en la base de datos.

4. ¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
EL FULL OUTER JOIN lo utilizaría en casos en los que necesite cruzar o comparar 2 fuentes o tablas independientes para identificar datos faltantes en ambas direcciones en simultáneo.

