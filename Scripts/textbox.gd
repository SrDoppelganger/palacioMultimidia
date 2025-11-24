extends CanvasLayer

@onready var textbox_container: MarginContainer = $"Layout/Textbox container";
@onready var label: Label = $"Layout/Textbox container/MarginContainer/HBoxContainer/Label";
@onready var exit: TextureButton = $Layout/exit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_text("lorem ipsum");
	
func hide_text():
	label.text = "";
	textbox_container.hide();
	exit.hide();
	exit.disabled = true;

func show_text():
	textbox_container.show();

func set_text(text:String):
	label.text = text

func _on_exit_pressed() -> void:
	hide_text();
