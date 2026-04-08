extends Node

enum Dreamer {
	BLUE = 1,
	PINK = 2
}

var dreamer: Dreamer

func get_dreamer_texture() -> Resource:
	match dreamer:
		Dreamer.PINK:
			return load("res://art/girl-sprite.png")
		Dreamer.BLUE:
			return load("res://art/boy-sprite.png")
		_:
			push_error("You're invisible! Dreamer Texture not set.")
	
	return load("res://art/girl-sprite.png")
