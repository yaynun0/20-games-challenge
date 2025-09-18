extends Node2D

var score : int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score=0
	$PAJARO_PELOTUDO.connect("collided",on_collision)
	$PipeManager/Pipes.connect("score",on_score)
	$PipeManager/Pipes2.connect("score",on_score)
	
func on_collision():
	score=0
	$PipeManager._on_collision()
	$Background._on_collision()
	$Piso._on_collision()

func on_score():
	score+=1
	print(score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
