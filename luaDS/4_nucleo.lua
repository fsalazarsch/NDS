collectgarbage("modo"):

--Esta función, nos permite limpiar la memoria de lua, hay que usarla con precaucion; las funciones que os pondré sustituyen al argumento "modo":

--"stop": detiene el liberador de memoria.
--"restart": reinicia el liberador de memoria.
--"collect": realiza un ciclo completo de liberación de memoria.
--"count": devuelve la memoria total en uso por Lua (en Kbytes).

dofile("nombre_archivo.lua"):
--Esta función, nos permite cargar otro fichero con extensión lua, suele ser util por si se desea cargar librerías externas o cargar otro fichero lua para la ejecución del programa. Para usarlo sustituir el argumento: "nombre_archivo" por el nombre de su fichero.

pcall(Funcion)
--Esta función, nos permite cargar una función en modo protegido, en caso de error este no se propaga, esto sirve básicamente para que nos muestre la linea y el error que se tiene en el código; de por si solo Micro lua nos muestra el error, pero puede ser útil por si la maquina se bloquea y no nos muestra el error; dejo un ejemplo de uso de pcall;

function Prueba() --Puedes cambiar el nombre perfectamente

end
estado,bool = pcall(Prueba)
if not estado then -- Si hay algun error
	while true do
		screen.print(SCREEN_DOWN,10, 10, "Ha ocurrido un error: "..bool)
		render()
	end
end

tonumber("Numero en string")
--Esta función, transforma un numero que esta en string a number. El uso es sencillo, cambian el argumento: "Numero en string" por un argumento que queráis.

tostring(Valor)
--Esta función, sirve para transformar cualquier valor en string. El uso es el mismo que tonumber.

type(Valor)
--Esta función, devuelve un argumento en string indicando si el valor es: "nil" (un string, no el valor nil), "number", "string", "boolean, "table", "function", "thread" y "userdata". El uso es sencillo, cambien el argumento valor por el que quieran.


table.insert(tabla,posicion,valor)
--Esta función, nos permite insertar un valor en una tabla vacia, o con argumentos, vamos a ver un ejemplo donde insertamos el string "MiVida" en la posicion 7;

MiTabla = { }
MiTabla[1] = "Hola"
MiTabla[2] = "Enseño tablas :D"
table.insert(MiTabla,7,"MiVida") --Lo explico mas adelante.
--En el primer argumento de table.insert ponemos la tabla a la cual queremos insertar valores, en el segundo argumento pondremos la posición, y en el ultimo lo que queremos insertar, Eso es todo.

table.remove(tabla, posicion)
--Esta función, nos permite remover/eliminar una posición de la tabla o la tabla entera, si queremos remover una posición de una tabla simplemente sustituimos "tabla" por nuestra tabla y elegimos la posición, en caso de querer eliminar toda la tabla, simplemente poner la tabla y no la posición, ejemplo: table.remove(MiTabla)

--modificar  archivos, pueden ser txt, inis, lua, etc.

MiArchivo = io.open("Nombre_archivo.extension","modo")
--Esta función, carga un archivo a la variable "MiArchivo", podremos leer, escribir y eliminar los datos de su interior, el uso es sencillo, en el primer argumento de io.open ponemos el nombre del archivo y su extensión, en el segundo ponemos el modo, os dejo una lista;

--"r": modo lectura (por defecto);
--"w": modo escritura;
--"a": modo adición;
--"r+": modo actualización, todos los datos preexistentes se mantienen;
--"w+": modo actualización, todos los datos preexistentes se borran;
--"a+": modo adición con actualización, todos los datos preexistentes se mantienen, y la escritura se permite sólo al final del fichero.

MiArchivo:read()
--Esta función, lee la primera linea del archivo, debe usarse con otra variable, ejemplo;

Linea = MiArchivo:read()

MiArchivo:close()
--Esta función, cierra el archivo, debe usarse cuando no se vaya a necesitar mas el archivo.

MiArchivo:lines()
--Esta función, lee las lineas del archivo, debe usarse en un bucle for, ejemplo;

y = 10
archivo = io.open("testLectura.txt","r")
 
for linea in archivo:lines() do
	y = y + 10
	screen.print(SCREEN_DOWN,100,y,linea)
end
 
archivo:close()
MiArchivo:flush()

--Esta función, guarda los cambios que se hayan realizado en el archivo, si no se utiliza, no se guardara nada.

MiArchivo:write(Texto)

Esta función, escribe en el archivo, debemos cambiar el argumento "Texto" por el que deseemos guardar, si no se abre en modo escritura o adición no hara nada. Una vez escrito debemos guardar con flush() y cerrar con close().



--funciones son las del propio sistema operativo;

os.exit()
--Esta función, hace una salida del programa, no necesita argumentos.

os.remove(Direccion_del_fichero)
--Esta función, elimina el fichero que hayamos puesto en la direccion, cambien el argumento por otro que ustedes deseen.

os.rename("NombreActual","NombreNuevo")
--Esta función, renombra el fichero, el uso como vemos es sencillo, cambien los argumentos por los que ustedes deseen.
