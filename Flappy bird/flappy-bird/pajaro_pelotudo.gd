extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var flap_sound: AudioStreamPlayer = $flap_sound
@onready var timer: Timer = $Timer

var jump_speed = -500
var FLAG =true

signal collided

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset()
	
func reset():
	position.x = 150
	position.y=380
	rotation_degrees=0
	FLAG=true
	
func stop_on_collision():
	emit_signal("collided")
	FLAG=false
	velocity.y=0
	timer.start()
	

func rotate_vel(vel):
	if 60>rotation_degrees and rotation_degrees >-60:
		rotation_degrees+=atan(vel)
	if rotation_degrees >60 and vel<0:
		rotation_degrees=59
	elif rotation_degrees <-60 and vel>0:
		rotation_degrees=-59

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if FLAG:
		velocity.y += gravity * delta
		rotate_vel(velocity.y)
		if Input.is_action_just_pressed("FLAP") :
			velocity.y = jump_speed
			animated_sprite_2d.play("FLAP" )
			flap_sound.play()
	
		var collision=move_and_collide(velocity*delta)
	
		if collision:
			stop_on_collision()
		
		
		
	
	#move_and_slide()


func _on_timer_timeout() -> void:
	reset()
