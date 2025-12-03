extends Node2D

@onready var audio: AudioStreamPlayer = $audio/audio

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_voltar_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");

func _on_sala_e_1_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_e_1.tscn");
	
	


func _on_music_mouse_entered() -> void:
	Global.change_to_hand();

func _on_music_mouse_exited() -> void:
	Global.change_to_arrow();

func _on_music_toggled(toggled_on: bool) -> void:
	if toggled_on:
		audio.play();
	if !toggled_on:
		audio.stop();
