extends RigidBody2D

@onready var timer: Timer = $Timer

var direction = Vector2(0.0,0.0)
var speed =300
var velocity=Vector2(speed,0).rotated(direction.angle())
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale=0
	reset_ball()

func reset_ball():
	direction.x=randf_range(-0.6,0.6)
	direction.y=randf_range(-0.6,0.6)
	velocity=Vector2(speed,0).rotated(direction.angle())
	position = get_window().size/2 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity*delta)
	if collision:
		velocity=1.1*velocity.bounce(collision.get_normal())

func _on_goal_body_entered(body: Node2D) -> void:
	velocity=Vector2(0,0)
	position = get_window().size/2 
	timer.start() # Replace with function body.


func _on_timer_timeout() -> void:
	reset_ball() # Replace with function body.
