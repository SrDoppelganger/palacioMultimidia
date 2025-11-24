extends Node2D

@onready var textbox: CanvasLayer = $Textbox
@onready var exit: TextureButton = $Textbox/exit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_continuar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/sala_d_2.tscn");


func _on_voltar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");

func show_info(info:String):
	textbox.set_text("haiiiiiii");
	textbox.show();
	textbox.show_text();
	exit.show();

func _on_area_leitura_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			print("clicado")
			show_info("leitura 1");

func _on_exit_pressed() -> void:
	textbox.hide_text();
	exit.hide();
