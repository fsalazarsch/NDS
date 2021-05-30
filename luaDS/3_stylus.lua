Puntero = { }
Puntero.imagen = Image.load("Puntero.png", RAM)

while true do
	Controls.read()
	--//Stylus.x da la coordenada en numero de la posicion X del puntero, lo mismo con Stylus.y
	screen.blit(SCREEN_DOWN,Stylus.X,Stylus.Y,Puntero.imagen)
	render()
end