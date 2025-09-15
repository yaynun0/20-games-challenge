extends CharacterBody2D
@export var speed = 400
var direction = Vector2(0.0,1.0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset_pos()


func reset_pos():
	position.x =get_window().size.x-64
	position.y= get_window().size.y/2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	if Input.is_action_pressed("P2_UP"):
		var collision=move_and_collide(-1*direction*speed*delta)
		
		
	if Input.is_action_pressed("P2_DOWN"):
		var collision=move_and_collide(direction*speed*delta)
