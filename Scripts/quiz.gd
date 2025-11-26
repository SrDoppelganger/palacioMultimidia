extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.change_to_arrow();


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/sala_quiz.tscn");
