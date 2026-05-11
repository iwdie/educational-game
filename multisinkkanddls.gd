extends Node2D

@onready var dlspoint = $dls.position
var dlsclicked:bool = false
@onready var DLS = $dls
@onready var blockagepoint = $Blockage.position
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_dls_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	
	
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		dlsclicked=true
		
		var dlqTrigger=$dlsconveyor
		dlqTrigger.set_point_position(0, Vector2(529,250))
		dlqTrigger.set_point_position(1, DLS.position+Vector2(80,0))



func _on_area_2d_area_entered(area):
	if area.is_in_group("Box"):
		print("we got a situation in here")
		if dlsclicked:
			var tween = get_tree().create_tween()
			tween.tween_property(area.get_parent(), "position", dlspoint, 2).set_trans(Tween.TRANS_LINEAR)
			await tween.finished # Replace with function body.
		else:
			var tween = get_tree().create_tween()
			tween.tween_property(area.get_parent(), "position", blockagepoint, 2).set_trans(Tween.TRANS_LINEAR)
			await tween.finished
			
		
		
		
		
