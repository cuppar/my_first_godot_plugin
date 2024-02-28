extends Node2D


func _on_my_button_pressed() -> void:
	SceneTranslation.change_scene_to_file_with_pause("res://scene2.tscn")
