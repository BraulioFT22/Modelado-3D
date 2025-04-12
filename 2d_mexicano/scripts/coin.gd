extends Area2D
func _on_body_entered(body):
	if body.name == "Player":
		queue_free()
		get_node("/root/Main").add_coin()  # Llama a la función en Main
