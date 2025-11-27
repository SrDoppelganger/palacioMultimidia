extends Node2D

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/title.tscn");



func _on_back_mouse_entered() -> void:
	Global.change_to_hand();
func _on_back_mouse_exited() -> void:
	Global.change_to_arrow();
