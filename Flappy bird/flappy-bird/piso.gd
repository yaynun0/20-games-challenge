extends Node2D
@onready var piso: StaticBody2D = $Piso
@onready var piso_2: StaticBody2D = $Piso2
@onready var timer: Timer = $Timer

var speed=200
var direction = Vector2(-1.0,0.0)
var FLAG=true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset()

func reset():
	piso.position.x=0
	piso_2.position.x=576
	FLAG=true
	
func _on_collision():
	FLAG=false
	timer.start()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if FLAG:
		piso.position+=speed*direction*delta
		piso_2.position+=speed*direction*delta
	
		if piso_2.position.x<0:
			piso.position.x=0
			piso_2.position.x=576


func _on_timer_timeout() -> void:
	reset()
