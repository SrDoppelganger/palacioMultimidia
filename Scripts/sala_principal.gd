extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_porta_esq_pressed() -> void:
	#TODO add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_e_1.tscn")
func _on_porta_esq_mouse_entered() -> void:
	Global.change_to_hand();
func _on_porta_esq_mouse_exited() -> void:
	Global.change_to_arrow();


func _on_porta_dir_pressed() -> void:
	#TODO add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_d_1.tscn")
func _on_porta_dir_mouse_entered() -> void:
	Global.change_to_hand();
func _on_porta_dir_mouse_exited() -> void:
	Global.change_to_arrow();

func _on_porta_quiz_pressed() -> void:
	#TODO add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_quiz.tscn")
	
func _on_porta_quiz_mouse_entered() -> void:
	Global.change_to_hand();
func _on_porta_quiz_mouse_exited() -> void:
	Global.change_to_arrow();
