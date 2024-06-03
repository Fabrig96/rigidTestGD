extends Node2D

var chara = preload("res://character_body_2d.tscn")
# Called when the node enters the scene tree for the first time.
var chara_inst = chara.instantiate()
const  SPEED = 500
func _ready():
	position.x = 1200
	position.y = 500
	#add_child(chara_inst)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	position.x -= SPEED * delta
	if position.x < 0:
		queue_free()
	
	#chara_inst.emite()
func define_sprite(name):
	$Area2D/Sprite2D.texture = load(name)
