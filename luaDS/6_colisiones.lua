function Colision(obj1, obj2) --Esta función, verifica si hay colisión entre los objetos, dentro de la función se usan los parámetros que recibe.
	if obj1.x+obj1.w>obj2.x --Borde derecho obj1 > borde izquierdo obj2
		and obj1.x<obj2.x+obj2.w --Borde izquierdo obj1 < borde derecho obj2
		and obj1.y+obj1.h>obj2.y --Borde inferior obj1 > borde superior obj2
		and obj1.y<obj2.y+obj2.h then --Borde superior obj1 < borde inferior obj2
			return true --Retorna verdadero si hay colisión
	end
	return false --Si el if no se cumple, viene a esta línea y retorna false, no hay colisión
end

--Ahora al simplemente seria que donde queramos usarlo poner nuestros objetos, NECESITAMOS SI O SI SABER LA X, LA Y, EL ANCHO Y EL ALTO DE LOS OBJETOS OBLIGATORIAMENTE. En caso de que no se sepa, la funcion dara error. Un uso practico;

--while true do
--if Colision(Flecha, Cruz) then
--os.exit()
--end

--Ahora si queremos que nuestro personaje no salga de la pantalla, usamos esta funcion que he creado personalmente;

function SinSalida(obj)
	if obj.x <= 0 then obj.x = 0 end
	if obj.y <= 0 then obj.y = 0 end
	if obj.x >= (256 - obj.w) then obj.x = (256 - obj.w) end
	if obj.y >= (192 - obj.h) then obj.y = (192 - obj.h) end
end
--Igualmente necesitamos saber OBLIGATORIAMENTE todos los datos de la imagen. Est colisión impide que la imagen se salga de la pantalla.


--Aprendiendo a usar sprites.
--Los sprites son una de las caracteristicas principales de un RPG, sin ellos los RPG no 
--serian lo que son hoy, quizás fuera otra cosa, vamos a aprender a usar sprites. 
--Vamos a ver como usaríamos/cargaríamos un sprite:


Sprite.new(Imagen, FrameW, FrameH, VRAM)
--Frame W significa que en la imagen cuantos frames o pixeles debemos recortar en posicion X
--Frame H significa que en la imagen cuantos frames o pixeles debemos recortar en posicion Y
--Con un ejemplo lo entendereis mejor os pongo el ejemplo para la imagen de arriba:
spr = Sprite.new("sprite.png", 24, 32, VRAM) --Lo cargamos en una variable
--La estructura de los sprites en algo compleja, pero es sencillo de usar
--Como funciona, pues es simple, ponemos el nombre de la variable que contiene el Sprite.new(Yo al anterior lo pongo asi spr = Sprite.new("sprite.png", 24, 32, VRAM))
--Despues ponemos los dos puntos y escribimos addAnimaticion
--Y despues pondriamos los fotogramas.
--spr:addAnimation({0,1,2,1}, FPS)   
--[[ lo que hay entre corchetes { } son las divisiones que se mostraran a la hora de blitear la animacion , y FPS es la velocidad en milisegundos que queremos que vaya la animacion, facil verdad?]]
spr:addAnimation({0,1,2,1}, 300)                                   -- Camina hacia arriba
spr:addAnimation({3,4,5,4}, 300)                                   -- Camina hacia derecha
spr:addAnimation({6,7,8,7}, 300)                                   -- Camina hacia abajo
spr:addAnimation({9,10,11,10}, 300)                              -- Camina hacia izquierda

--Bien, ahora debemos mostrar/cargar unas variables y finalmente mostrar el sprite.

x = 150
y = 80
direction = 1
while not Keys.newPress.Start do
		Controls.read()
		spr:playAnimation(SCREEN_DOWN, x, y, direction)     -- Cargamos animacion o mostramos animacion (como quieran llamarlo)
	if Keys.held.Up then
		direction = 1 
		y = y - 1 
	end
	if Keys.held.Right then
		direction = 2 
		x = x + 1 
	end
	if Keys.held.Down then
		direction = 3 
		y = y + 1 
	end
	if Keys.held.Left then 
		direction = 4
		x = x - 1
	end
	render()
end