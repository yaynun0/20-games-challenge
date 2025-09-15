extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var flap_sound: AudioStreamPlayer = $flap_sound

var jump_speed = -400

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 150

func rotate_vel(vel):
	if 90>rotation_degrees and rotation_degrees >-90:
		rotation_degrees+=atan(vel)
	if rotation_degrees >90 and vel<0:
		rotation_degrees=89
	elif rotation_degrees <-90 and vel>0:
		rotation_degrees=-89

		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	rotate_vel(velocity.y)
	if Input.is_action_just_pressed("FLAP") :
		velocity.y = jump_speed
		animated_sprite_2d.play("FLAP" )
		flap_sound.play()
	
	move_and_slide()
