extends Node2D
@onready var video: VideoStreamPlayer = $CanvasLayer/video
var playVideo;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	playVideo = false


func _on_continuar_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_e_2.tscn");

func _on_voltar_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");


func _on_quadro_mouse_entered() -> void:
	pass # Replace with function body.
	#TODO mudar cursor


func _on_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		Soundtrack.muteMusic();
		video.paused = false;
	else:
		video.paused = true;
		Soundtrack.playMusic("placeholder")
