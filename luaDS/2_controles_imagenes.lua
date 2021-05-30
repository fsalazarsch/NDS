Fondo = Image.load("Destellos.png", RAM)
Rojo = Color.new(31,0,0)
Azul = Color.new(0,0,31)
Verde = Color.new(0,31,0)
Blanco = Color.new(31,31,31)
Negro = Color.new(0,0,0)
Opciones = { }
Opciones[1] = "Iniciar Juego"
Opciones[2] = "Salir"
Vida = { }
Vida.enemigo = 100
Vida.jugador = 100
IniciarJuego = false
Sel = 1
function Mov()
	if Keys.newPress.Down then
		Sel = Sel + 1
	elseif Keys.newPress.Up then
		Sel = Sel - 1
	end
end
while true do
	Controls.read() --ESENCIAL USAR ESTO, sin el controls.read() nunca nos funcionara los controles!
	screen.blit(SCREEN_DOWN,0,0,Fondo)
	if IniciarJuego == false then --Esto sera para que mas adelante cuando sea true, no se cumpla lo que haya dentro.
		Mov() --Mi funcion.
		for i=1,#Opciones do --#Opciones llama o te da el numero de subtablas que tiene la tabla principal.
			if Sel == i then
				screen.print(SCREEN_DOWN,10,(10 * i) + 5,Opciones[i],Rojo) --Donde os podeis liar es en el argumento y, lo que hace es que a cada pasada se i aumente en 1
			else
				screen.print(SCREEN_DOWN,10,(10 * i) + 5,Opciones[i],Azul)
			end
		end
		if Sel == 1 and Keys.newPress.A then
			IniciarJuego = true
		elseif Sel == 2 and Keys.newPress.A then
			os.exit()
		end
	end--Cerramos el if que antes creamos.
	if IniciarJuego == true then
		screen.print(SCREEN_DOWN,10,10,"Mi Vida: "..Vida.jugador) --a los .. se les llama concatetacion (Un nombre rarillo xD) sirve para unir valores entre strings y numbers.
		screen.print(SCREEN_DOWN,150,10,"Vida enemigo: "..Vida.enemigo)
		--Vamos a hacer que cuando la vida del enemigo llegue a 0 ponga "has matado al rival"
		if Keys.held.A and Vida.enemigo > 1 then --Queremos held ya que queremos que se cumpla mientras esta pulsado y vida enemigo sea mayor a 1
			Vida.enemigo = Vida.enemigo - 1 --Esto reducira su vida.
		end
		if Vida.enemigo == 0 then
			screen.print(SCREEN_DOWN,10,100,"Lo mataste Pulsa B") --Si, quiero que cuando lo mate y pulse B el programa termine.
			if Keys.newPress.B then
				os.exit()
			end
		end
	end
	render()
end