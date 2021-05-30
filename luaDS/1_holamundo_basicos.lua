--Mi primer programa en Lua
--https://github.com/fsalazarsch/NDS/tree/main/luaDS
 
Azul = Color.new(0, 0, 31)
while true do
screen.print(SCREEN_UP, 10, 10, "Nuestro primer Hola mundo", Azul)
screen.print(SCREEN_DOWN,10,10,Sumar(6, 5))
tablas()

render()
end

function Sumar(a,b)
suma = a + b
return suma
end

function tablas()
	Tabla_Para_Texto = {10,10,"Hola :D"}
	while true do
	screen.print(SCREEN_UP, Tabla_Para_Texto[1], Tabla_Para_Texto[2], Tabla_Para_Texto[3])


--for i=1,VariableFinal do
--<Codigo que se repetira las veces que hayas puesto en "VariableFinal", normalmente es un numero>
--end

--Choque = true
--Suma = 11
--if Choque == true then
--<Codigo>
--elseif Suma == 11 then
--<Codigo>
--end

--while true do
--<Codigo que se repetira infinitamente>
--end
