extends Node2D

@onready var textbox: CanvasLayer = $Textbox
@onready var exit: TextureButton = $Textbox/exit

var text1 = "ANIMAÇÃO CONVENCIONAL\nTradicionalmente a animação convencional é feita através da animação de seqüências de desenhos que são exibidos a uma determinada taxa (quadros/segundo). O processo era bastante artesanal, pois os desenhos eram feitos um a um. Algumas técnicas são usadas para facilitar o processo, como a utilização de um grande desenho para representar o cenário onde a animação é construída. Nesse processo apenas os personagens ou partes do desenho que serão alteradas são redesenhados. Os desenhos que são feitos com a diferença entre os quadros, são feitos em um celulóide transparente que é colocado sobre o desenho do cenário. É possível ter vários níveis de profundidade para formar o desenho com vários celulóides com desenhos diferentes para compor a imagem final. Esse processo permite também criar efeitos de aproximação de personagens (zoom). No processo tradicional, depois que o quadro (cena com os personagens) é composto, é, então, fotografado com uma câmera de cinema que permite o registro quadro-a-quadro. Normalmente, em película de cinema, são feitos 24 quadros por segundo para gerar uma animação de boa qualidade, com isso, para gerar um minuto de animação são necessárias 1.440 imagens. ";
var text2 = "REAL TIME\nReal-time é o nome dado às animações que são geradas pelo computador à medida que são apresentadas na tela. Como exemplo de real-time temos os jogos, programas de simulação, programas educativos, onde toda a animação é gerada na hora. Animações real-time são limitadas pela capacidade dos computadores. Uma imagem de animação em real-time deve ser mostrada na tela a uma taxa de pelo menos 15 quadros por segundo, porque a ilusão de movimento contínuo não é obtida com sucesso em taxas menores. Isto é realmente uma grave limitação, pois apenas cálculos simples podem ser efetuados nesta velocidade (hoje em dia). Estas limitações dependem de várias características do hardware, como velocidade do clock, tamanho da palavra, memória, comunicação com a placa de vídeo, etc. Porém hoje em dia, já é possível realizar várias animações em tempo real, pois as máquinas estão cada vez mais sofisticadas. "

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_continuar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/sala_principal.tscn");

func _on_voltar_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/sala_d_1.tscn");

# ============================================================================================== #
func _on_area_leitura_1_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			show_info(text1);

func _on_area_leitura_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			show_info(text2);

func show_info(info:String):
	textbox.set_text(info);
	textbox.show();
	textbox.show_text();
	exit.show();

func _on_exit_pressed() -> void:
	textbox.hide_text();
	exit.hide();

# scripts de cursores
func _on_mouse_entered() -> void:
	Global.change_to_hand();

func _on_mouse_exited() -> void:
	Global.change_to_arrow();
