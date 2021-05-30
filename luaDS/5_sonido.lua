--transformar todos los sonidos en wav en un solo bin con su respectivo txt donde nos da la información de como cargar los archivos.

Sound.loadBank("soundbank.bin")
--Carga  banco de sonidos

--Ahora cargar los SFX. Entramos en el txt que habrá dejado el archivo 
--cuando hayamos hecho la conversión, y veremos sonidos, como vemos pone el SFX y una
--barra baja mas el nombre y a la derecha un numero, tomamos ese numero

Sound.loadSFX(0)
--En este caso, el SFX que quiero cargar esta en la posición 0. 
--Ahora dentro de una sentencia, reproducimos el archivo;
Sound.startSFX(0)
--Vuelvo a poner un 0 en los argumentos porque es la posición original del archivo.
--Ya tendríamos el sonido, con esto ya estaría reproduciéndose, 
--NOTA: los sonidos no se reproducen en el emulador, solo se reproducen en la DS.

Sound.stopSFX(0)
--Con esto pararía de reproducir el SFX.