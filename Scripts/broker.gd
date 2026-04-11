extends Node2D


func _ready():
	pass


func _process(delta):
	pass


func duplicate_events() -> void:
	var dest_size = ConveyerController.destination.size()

	if dest_size <= 1:
		ConveyerController.can_send = true
		return

	var original_events = ConveyerController.events.duplicate()
	var new_events = []


	for i in range(original_events.size()):
		var original_box = original_events[i]
		if not is_instance_valid(original_box):
			continue

		new_events.append(original_box)

		for j in range(dest_size - 1):
			var clone = original_box.duplicate()
			get_tree().current_scene.add_child(clone)
			clone.global_position = original_box.global_position 
			new_events.append(clone)

	ConveyerController.events = new_events
	print("Events after duplication: ", ConveyerController.events.size())
	ConveyerController.can_send = true


func _on_broker_click_area_entered(area):
	if area.is_in_group("box"):
		pass


func _on_broker_click_mouse_entered():
	$hoverlabel.visible = true # Replace with function body.


func _on_broker_click_mouse_exited():
	$hoverlabel.visible = false # Replace with function body.
