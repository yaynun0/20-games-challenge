extends StaticBody2D
var hp=1
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_health(health: int) ->void:
	hp=1+health

func _on_area_2d_body_entered(body: Node2D) -> void:
	hp-=1
	if hp<0:
		queue_free() # Replace with function body.
