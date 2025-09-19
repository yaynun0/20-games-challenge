extends Node2D
#
#@onready var tile: StaticBody2D = $Tile
#@onready var tile_2: StaticBody2D = $Tile2
#@onready var tile_3: StaticBody2D = $Tile3
#@onready var tile_4: StaticBody2D = $Tile4
#@onready var tile_5: StaticBody2D = $Tile5
#@onready var tile_6: StaticBody2D = $Tile6
#@onready var tile_7: StaticBody2D = $Tile7
#@onready var tile_8: StaticBody2D = $Tile8
#@onready var tile_9: StaticBody2D = $Tile9
#@onready var tile_10: StaticBody2D = $Tile10
#@onready var tile_11: StaticBody2D = $Tile11
#@onready var tile_12: StaticBody2D = $Tile12

#var tiles=[[tile,tile_2,tile_3,tile_4,tile_5,tile_6,tile_7,tile_8,tile_9,tile_10,tile_11,tile_12]]


var tile_type = preload("res://tile.tscn")

var tiles=[]
#var tiles_connections=[]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(6):
		var tile_row =[]
		var tiles_hp_row=[]
		for j in range(12):
			tiles_hp_row.append(0)
			var tile = tile_type.instantiate()
			
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
