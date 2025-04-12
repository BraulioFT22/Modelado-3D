extends Area2D
var speed = 150
var direction = Vector2.RIGHT

func _ready():
	# Dirección aleatoria
	direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
	position = Vector2(randi() % 480, randi() % 720)  # Posición inicial aleatoria

func _physics_process(_delta):
	position += direction * speed * _delta
	# Rebotar en bordes
	if position.x <= 0 or position.x >= 480:
		direction.x *= -1
	if position.y <= 0 or position.y >= 720:
		direction.y *= -1
