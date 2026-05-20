extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	print("dest_size:",ConveyerController.destination.size())
	$"../broker".duplicate_events()
	
	Level.initialise()
	if $"../AnimatedSprite2D":
		
		$"../AnimatedSprite2D".frame = 1
