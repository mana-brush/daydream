extends TextureRect

@export var flower_icon: TextureRect

func _ready() -> void:
	if flower_icon:
		flower_icon.modulate.a = 0

func _on_mouse_entered() -> void:
	if flower_icon:
		flower_icon.modulate.a = 1


func _on_mouse_exited() -> void:
	if flower_icon:
		flower_icon.modulate.a = 0
