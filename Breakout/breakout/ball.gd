extends RigidBody2D

var speed=200
var v=Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x=540
	position.y=450
	v=speed*Vector2(0,1) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var collision=move_and_collide(v*delta)
	if collision:
		print(v.length())
		if v.length()<2000:
			v -= 2*collision.get_normal().dot(v)*collision.get_normal()
			v=1.02*v
		else:
			v -= 2*collision.get_normal().dot(v)*collision.get_normal()
		
			
	
	
