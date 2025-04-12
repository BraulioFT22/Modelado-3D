extends CharacterBody2D
@export var speed = 300

func _physics_process(_delta):
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input * speed
	move_and_slide()
	
func _on_area_entered(area):
	if area.is_in_group("skulls"):
		get_node("/root/Main").game_over()
