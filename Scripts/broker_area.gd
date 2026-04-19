extends Area2D


const event_script = preload("res://Scripts/event_box.gd")

# Called when the node enters the scene tree for the first time.

func _input_event(viewport, event, shape_idx) -> void:
	
	if event.is_pressed():
		self.on_click()
		
func on_click():
	ConveyerController.selected = self

# Called every frame. 'delta' is the elapsed time since the previous frame
