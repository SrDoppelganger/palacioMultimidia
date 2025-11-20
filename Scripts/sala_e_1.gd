extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_continuar_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_e_2.tscn");

func _on_voltar_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");
