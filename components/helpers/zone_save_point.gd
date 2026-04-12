extends Node3D

@export var saved_material : Material

# We only allow saving once after our scene loads
var is_saved = false

func _on_save_button_button_pressed(_button):
	pass
