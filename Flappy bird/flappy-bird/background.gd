extends Node2D

@onready var texture_rect: TextureRect = $TextureRect
@onready var texture_rect_2: TextureRect = $TextureRect2
@onready var timer: Timer = $Timer

var FLAG=true
var speed=100
var direction = Vector2(-1.0,0.0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset()

func reset():
	FLAG=true
	texture_rect.position.x=0
	texture_rect.position.y=0
	texture_rect_2.position.x=576
	texture_rect_2.position.y=0

func _on_collision():
	FLAG=false
	timer.start()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if FLAG:
		texture_rect.position += direction*speed*delta
	
		if texture_rect.position.x <= -576:
			texture_rect.position.x = 0

		texture_rect_2.position += direction *speed *delta
		if texture_rect_2.position.x <= 0:
			texture_rect_2.position.x = 576


func _on_timer_timeout() -> void:
	reset()
