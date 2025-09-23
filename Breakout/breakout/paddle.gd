extends CharacterBody2D

var speed=300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y=650
	position.x=540 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("LEFT_INPUT"):
		position.x-=speed*delta
		
	if Input.is_action_pressed("RIGHT_INPUT"):
		position.x+=speed*delta
		
	
