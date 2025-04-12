extends Area2D

# Esta función será llamada por el jugador cuando la recoja.
# Puedes añadir efectos aquí (sonido, partículas) antes de que desaparezca.
func collect():
	# Ejemplo: Reproducir un sonido
	# if has_node("PickupSound"):
	#    $PickupSound.play() # Necesitarías añadir un nodo AudioStreamPlayer2D

	# Desaparece la moneda
	queue_free()
