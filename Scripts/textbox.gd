extends CanvasLayer

@onready var textbox_container: MarginContainer = $"Textbox container"
@onready var label: Label = $"Textbox container/MarginContainer/HBoxContainer/Label"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide_text();
	
func hide_text():
	label.text = "";
	textbox_container.hide();
	
