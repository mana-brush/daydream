extends BoxContainer

@export var dreamer: Global.Dreamer

func _on_gui_input(event: InputEvent) -> void:
	
	if not event is InputEventMouseButton:
		return

	Global.dreamer = dreamer
	get_tree().change_scene_to_file("res://scenes/home/home.tscn")
