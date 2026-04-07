extends BoxContainer

enum MenuState {
	START,
	OPTIONS,
	FLOWER_DREAM,
	RETURN,
	EXIT
}

@export var flower_icon: TextureRect
@export var menu_state: MenuState

func _ready() -> void:
	if flower_icon:
		flower_icon.modulate.a = 0

func _on_mouse_entered() -> void:
	if flower_icon:
		flower_icon.modulate.a = 1


func _on_mouse_exited() -> void:
	if flower_icon:
		flower_icon.modulate.a = 0


func _on_gui_input(event: InputEvent) -> void:
	if not event is InputEventMouseButton:
		return
		
	match menu_state:
		MenuState.START:
			get_tree().change_scene_to_file("res://scenes/choose_dreamer/choose_dreamer.tscn")
		MenuState.OPTIONS:
			get_tree().change_scene_to_file("res://scenes/options/options.tscn")
		MenuState.FLOWER_DREAM:
			pass
		MenuState.RETURN:
			get_tree().change_scene_to_file("res://main_menu.tscn")
		MenuState.EXIT:
			get_tree().quit()
		_:
			push_error("Menu State not supported.")
			
	
