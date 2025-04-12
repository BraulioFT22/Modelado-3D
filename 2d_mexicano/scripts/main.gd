extends Node2D
@onready var player = $Player
@onready var hud = $CanvasLayer/HUD/Label

var score = 0
var skull_scene = preload("res://scenes/Skull.tscn")
var coin_scene = preload("res://scenes/Coin.tscn")

func _ready():
	$Timer.start()
	$CoinTimer.start()

func _on_timer_timeout():
	var skull = skull_scene.instantiate()
	add_child(skull)
	skull.position = Vector2(randi() % 480, randi() % 720)

func _on_coin_timer_timeout():
	var coin = coin_scene.instantiate()
	add_child(coin)
	coin.position = Vector2(randi() % 400 + 40, randi() % 600 + 60)

func add_coin():
	score += 1
	hud.text = "Monedas: " + str(score)

func game_over():
	get_tree().paused = true
	print("¡Game Over! Monedas recolectadas: ", score)
	# Aquí puedes añadir un mensaje de game over en pantalla
