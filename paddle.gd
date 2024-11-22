extends StaticBody2D

@export var SPEED: int = 150
@export var player_1: bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if player_1:
		position.x = 20
		position.y = 668/2
	else:
		position.x = 1152 - 20
		position.y =  668 / 2
	
	position.x = 20
	position.y = 648/2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_1:
		if Input.is_action_pressed("move_down"):
			position.y += SPEED * delta

		if Input.is_action_pressed("move_up"):
			position.y -= SPEED * delta
		
	else:
		if Input.is_action_pressed("move_down2"):
			position.y += SPEED * delta

		if Input.is_action_pressed("move_up2"):
			position.y -= SPEED * delta
