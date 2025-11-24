extends Node2D

@onready var king: AnimatedSprite2D = $CanvasLayer/king


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_voltar_pressed() -> void:
	#add som de "aceite" aqui
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");
func _on_voltar_mouse_entered() -> void:
	Global.change_to_hand();
func _on_voltar_mouse_exited() -> void:
	Global.change_to_arrow();



func _on_area_2d_mouse_entered() -> void:
	king.play("active");
	Global.change_to_hand();

func _on_area_2d_mouse_exited() -> void:
	king.play("default");
	Global.change_to_arrow();
