extends Node2D

@onready var pergunta: Label = $CanvasLayer/Background/question/pergunta
@onready var alternativas: Label = $CanvasLayer/Background/question/alternativas

@onready var bd: Node = $BD

#armazena a resposta certa da pergunta
var alt_correta;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.change_to_arrow();
	changeQuestion();

func changeQuestion():
	var index = randi_range(0,1);
	var question_text = bd.getQuestion(index)
	
	#0-enunciado 1-alternativas 2-resp. certa
	pergunta.text = question_text[0];
	alternativas.text = question_text[1];
	setAnswer(question_text[2]);
	

#define a resposta certa da pergunta
func setAnswer(resp: String):
	alt_correta = resp;
#checa se a alternativa está correta
func checkAnswer(resp: String):
	return(resp == alt_correta)
	
func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/sala_quiz.tscn");



#BOTÃO A
func _on_a_pressed() -> void:
	const name = "a";
	if checkAnswer(name):
		print("nice!");
	else:
		print("nah");

#BOTÃO B
func _on_b_pressed() -> void:
	const name = "b";
	if checkAnswer(name):
		print("nice!");
	else:
		print("nah");

#BOTÃO C
func _on_c_pressed() -> void:
	const name = "c";
	if checkAnswer(name):
		print("nice!");
	else:
		print("nah");

#BOTÃO D
func _on_d_pressed() -> void:
	const name = "d";
	if checkAnswer(name):
		print("nice!");
	else:
		print("nah");
