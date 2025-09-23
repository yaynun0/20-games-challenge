extends Node2D


var tile_type = preload("res://tile.tscn")

var tiles=[]
#var tiles_connections=[]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(6):
		var tile_row =[]
		for j in range(12):
			var tile = tile_type.instantiate()
			tile.color=Color(0,0.1*(6-i),0.1*(i))
			add_child(tile)
			tile_row.append(tile)
		tiles.append(tile_row)
		
	for i in range(6):
		for j in range(12):
			#tiles[i][j].set_health(5-i)
			tiles[i][j].position.x=38+84*j
			tiles[i][j].position.y=60+24*i
		



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
