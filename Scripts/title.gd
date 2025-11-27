extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Soundtrack.playMusic("placeholder");
	
func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");


func _on_sobre_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/about.tscn");


func _on_mouse_entered() -> void:
	Global.change_to_hand();
func _on_mouse_exited() -> void:
	Global.change_to_arrow();
