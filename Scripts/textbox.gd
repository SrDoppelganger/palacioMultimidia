extends CanvasLayer

@onready var textbox_container: MarginContainer = $"Layout/Textbox container";
@onready var label: Label = $"Layout/Textbox container/MarginContainer/HBoxContainer/Label";

	
func hide_text():
	label.text = "";
	textbox_container.hide();

func show_text():
	textbox_container.show();

func set_text(text:String):
	label.text = text
