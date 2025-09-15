extends Node2D

@onready var texture_rect: TextureRect = $TextureRect
@onready var texture_rect_2: TextureRect = $TextureRect2

var speed=300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture_rect.position.x=0
	texture_rect.position.y=0
	texture_rect_2.position.x=576
	texture_rect_2.position.y=0




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if texture_rect.position.x>=-576:
		texture_rect.position += Vector2(-1,0)*speed*delta
	else:
		texture_rect.position.x=576
		texture_rect.position += Vector2(-1,0)*speed*delta
	
	if texture_rect_2.position.x>=-576:
		texture_rect_2.position += Vector2(-1,0)*speed*delta
	else:
		texture_rect_2.position.x=576
		texture_rect_2.position += Vector2(-1,0)*speed*delta
	
	
