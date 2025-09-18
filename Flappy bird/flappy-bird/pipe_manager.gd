extends Node2D
@onready var pipes: Node2D = $Pipes
@onready var pipes_2: Node2D = $Pipes2
@onready var timer: Timer = $Timer


var speed= 200
var FLAG=true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reset()
	
func reset():
	pipes.position.x=576
	pipes_2.position.x=960
	pipes.position.y=randi_range(-376,0)
	pipes_2.position.y=randi_range(-376,0)
	FLAG=true

func _on_collision():
	FLAG=false
	timer.start()

func _process(delta: float) -> void:
	if FLAG:
		pipes.position.x-=speed*delta
		pipes_2.position.x-=speed*delta
	
		if pipes.position.x<-88:
			pipes.position.x=pipes_2.position.x+384
			pipes.position.y=randi_range(-376,0)
		if pipes_2.position.x<-88:
			pipes_2.position.x=pipes.position.x+384
			pipes_2.position.y=randi_range(-376,0)


func _on_timer_timeout() -> void:
	reset() # Replace with function body.
