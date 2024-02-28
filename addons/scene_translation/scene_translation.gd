extends CanvasLayer

@onready var color_rect: ColorRect = $ColorRect

func fade_to_black():
	var tween := create_tween()
	tween.tween_callback(color_rect.show)
	tween.tween_property(color_rect, "color:a", 1.0, 0.2).from(0.0)
	await tween.finished

func fade_from_black():
	var tween := create_tween()
	tween.tween_property(color_rect, "color:a", 0.0, 0.3).from(1.0)
	tween.tween_callback(color_rect.hide)
	await tween.finished

func change_scene_to_file(scene_file: String):
	await fade_to_black()
	get_tree().change_scene_to_file(scene_file)
	await fade_from_black()

func change_scene_to_file_with_pause(scene_file: String):
	get_tree().paused = true
	await fade_to_black()
	get_tree().change_scene_to_file(scene_file)
	await fade_from_black()
	get_tree().paused = false
