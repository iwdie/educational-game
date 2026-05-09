extends Node2D

func _ready():
	Level.levelind = 4
	ConveyerController.olderlevels = false




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func _on_timer_timeout():
	Level.next_level() # Replace with function body.
