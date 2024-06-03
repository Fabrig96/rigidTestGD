extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():

	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#change
#ho

func detector():
	print("Emision recibida del player al world")
	$AudioStreamPlayer2D.play()


func creaciones():
	var ene = preload("res://ene.tscn")
	var ene_ins = ene.instantiate()
	var t1 = "res://Idle/0_Zombie_Villager_Idle_000.png"
	var t2 = "res://Idle/0_Zombie_Villager_Idle_001.png"
	var t3 = "res://Idle/0_Zombie_Villager_Idle_002.png"
	var t4 = "res://Idle/0_Zombie_Villager_Idle_003.png"
	var array = [t1,t2,t3,t4]
	var text = array[randi_range(0,3)]
		
	ene_ins.define_sprite(text)
	add_child(ene_ins)
	


func _on_timer_timeout():
	creaciones()
