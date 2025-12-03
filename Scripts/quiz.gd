extends Node2D

@onready var pergunta: Label = $CanvasLayer/Background/question/pergunta
@onready var alternativas: Label = $CanvasLayer/Background/question/alternativas

@onready var bd: Node = $BD

#armazena a resposta certa da pergunta
var alt_correta;
var numQuestoes = 10;
#armazena index das perguntas disponiveis
var perguntas_disponiveis = [0,1,2,3,4,5,6,7,8,9];

#num de respostas certas
var acerto = 0;
#guarda index da questão atual para removê-la
var index = 0;


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.change_to_arrow();
	changeQuestion();
	acerto = 0;
	
func _process(delta: float) -> void:
	if acerto >= 5:
		get_tree().change_scene_to_file("res://Scenes/quiz_end.tscn");

func changeQuestion():
	#verifica se ainda tem perguntas disponíveis
	if perguntas_disponiveis.is_empty():
		get_tree().change_scene_to_file("res://Scenes/sala_quiz.tscn");
	else:
		index = perguntas_disponiveis.pick_random();
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
		acerto += 1;
		Soundtrack.playAccept();
	else:
		Soundtrack.playDenied();
	perguntas_disponiveis.erase(index);
	changeQuestion();

#BOTÃO B
func _on_b_pressed() -> void:
	const name = "b";
	if checkAnswer(name):
		acerto += 1;
		Soundtrack.playAccept();
	else:
		Soundtrack.playDenied();
	perguntas_disponiveis.erase(index);
	changeQuestion();

#BOTÃO C
func _on_c_pressed() -> void:
	const name = "c";
	if checkAnswer(name):
		acerto += 1;
		Soundtrack.playAccept();
	else:
		Soundtrack.playDenied();
	perguntas_disponiveis.erase(index);
	changeQuestion();

#BOTÃO D
func _on_d_pressed() -> void:
	const name = "d";
	if checkAnswer(name):
		acerto += 1;
		Soundtrack.playAccept();
	else:
		Soundtrack.playDenied();
	perguntas_disponiveis.erase(index);
	changeQuestion();


# Coisas de cursores
func _on_mouse_entered() -> void:
	Global.change_to_hand();
func _on_mouse_exited() -> void:
	Global.change_to_arrow();
