extends CharacterBody2D
signal soychara

@onready var screensize = get_viewport_rect().size
const SPEED = 500

func _physics_process(delta):
	motion_control()
	
	
func motion_control():
	
	velocity.x = Global.get_axis().x * SPEED
	velocity.y = Global.get_axis().y * -SPEED
	move_and_slide()
	#print(velocity)
	position.x = clamp(position.x,0,screensize.x)
	position.y = clamp(position.y,0,screensize.y)
	

		
#func soyCharabody():
	#print("Soy character body 2D")
	#soychara.emit()
func emite():

	soychara.emit()


	


func _on_area_2d_area_entered(area):
	if area.is_in_group("Meta"):
		print("Player entro a la meta")
		emite()
