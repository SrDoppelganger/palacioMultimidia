extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_voltar_pressed() -> void:
	#add som de "aceite" aqui
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");
