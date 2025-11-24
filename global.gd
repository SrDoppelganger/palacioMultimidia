#todo adicionar cursores aqui
extends  Node

var pointer = preload("res://assets/cursores/Hands/Hand1.png");
var clicker = preload("res://assets/cursores/Arrows/Arrow2.png");

func change_to_hand():
	Input.set_custom_mouse_cursor(pointer);

func change_to_arrow():
	Input.set_custom_mouse_cursor(clicker);
