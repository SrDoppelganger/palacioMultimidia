extends Node2D
@onready var video: VideoStreamPlayer = $CanvasLayer/video
var playVideo;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playVideo = false


func _on_continuar_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_e_2.tscn");
func _on_continuar_mouse_entered() -> void:
	Global.change_to_hand();
func _on_continuar_mouse_exited() -> void:
	Global.change_to_arrow();

func _on_voltar_pressed() -> void:
	#add som de "aceite"
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");
func _on_voltar_mouse_entered() -> void:
	Global.change_to_hand();
func _on_voltar_mouse_exited() -> void:
	Global.change_to_arrow();



func _on_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		Soundtrack.pauseMusic();
		video.paused = false;
	else:
		video.paused = true;
		Soundtrack.playMusic("placeholder");
func _on_button_mouse_entered() -> void:
	Global.change_to_hand();
func _on_button_mouse_exited() -> void:
	Global.change_to_arrow();
