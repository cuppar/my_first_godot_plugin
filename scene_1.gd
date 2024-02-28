extends Node2D
@onready var button: Button = $Button

func _on_button_pressed() -> void:
	SceneTranslation.change_scene_to_file_with_pause("res://scene_2.tscn")
