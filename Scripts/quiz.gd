extends Node2D

@onready var pergunta: Label = $CanvasLayer/Background/question/pergunta
@onready var alternativas: Label = $CanvasLayer/Background/question/alternativas

@onready var bd: Node = $BD

#armazena a resposta certa da pergunta
var alt_correta;
var numQuestoes = 2;
#armazena index das perguntas já utilizadas
var perguntas_utilizadas = [];

#num de respostas certas
var acerto = 0;


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.change_to_arrow();
	changeQuestion();
	acerto = 0;

func changeQuestion():
	var index = randi_range(0,1);
	if perguntas_utilizadas.size() == numQuestoes:
		#tira o jogador da cena caso todas as perguntas tenham sido resolvidas
		get_tree().change_scene_to_file("res://Scenes/sala_quiz.tscn");
	if perguntas_utilizadas.has(index) == true:
		index = randi_range(index,numQuestoes - 1); 
	else:
		perguntas_utilizadas.append(index);
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
		acerto += 1;
	else:
		print("nah");
		
	changeQuestion();

#BOTÃO B
func _on_b_pressed() -> void:
	const name = "b";
	if checkAnswer(name):
		print("nice!");
		acerto += 1;
	else:
		print("nah");
	
	changeQuestion();

#BOTÃO C
func _on_c_pressed() -> void:
	const name = "c";
	if checkAnswer(name):
		print("nice!");
		acerto += 1;
	else:
		print("nah");
	
	changeQuestion();

#BOTÃO D
func _on_d_pressed() -> void:
	const name = "d";
	if checkAnswer(name):
		print("nice!");
		acerto += 1;
	else:
		print("nah");
	changeQuestion();


# Coisas de cursores
func _on_a_mouse_entered() -> void:
	Global.change_to_hand();
func _on_a_mouse_exited() -> void:
	Global.change_to_arrow();
	
func _on_b_mouse_entered() -> void:
	Global.change_to_hand();
func _on_b_mouse_exited() -> void:
	Global.change_to_arrow();


func _on_c_mouse_entered() -> void:
	Global.change_to_hand();
func _on_c_mouse_exited() -> void:
	Global.change_to_arrow();

func _on_d_mouse_entered() -> void:
	Global.change_to_hand();
func _on_d_mouse_exited() -> void:
	Global.change_to_arrow();
