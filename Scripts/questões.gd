extends Node
#perguntas e respostas tem index equivalente

const questions = {
	0:{
		"enunciado":"Qual a diferença entre animação convencional (tradicional) e animação feita por computador(CGI)?",
		"alternativas":"a)A animação tradicional possui diversas tecnicas diferentes como Frame Buffer e Real Time enquanto que a animação por computador não.\nb)A animação tradicional é feita através de sequencias de desenhos que são exibidos numa determinada taxa de quadros, enquanto que a CGI possui tecnicas como Frame Buffer e Real Time.\nc)a animação tradicional utiliza de calculos vetoriais para exibir imagens numa tela enquanto que CGI utiliza a passagem rapida de desenhos numa determinada taxa de frames.\nd)Não há diferença entre esses dois estilos.",
		"resposta":"b"
	},
	1:{
		"enunciado":"Qual a utilidade dos computadores para a animação?",
		"alternativas":"a)Os computadores auxiliam somente na exibição.\nb)Não é possível utilizar computadores para fazer animações.\nc)Computadores podem ser utilizados para CGI e automatização de tarefas repetitivas.\nd)Animação com computadores só podem ser feitas com IA.",
		"resposta":"b"
	},
	2:{
		"enunciado":"0 que é CGI?",
		"alternativas":"a)É o termo exclusivo para imagens geradas por IA.\nb)São tecnicas de processamento e tratamento de imagens utilizando filtros.\nc)É um programa de modelagem 3D\nd)produção de imagens que são originalmente geradas por computador através de modelagem de objetos 2D ou 3D,",
		"resposta":"d"
	},
	3:{
		"enunciado":"Como CGI pode ser utilizada em sistemas multimídia?",
		"alternativas":"a)A animação pode ser utilizada como um meio de comunicar ideias, fazer simulações e muito mais\nb)Como um framework de desenvolvimento.\nc)CGI pode ser utilizada para distrair o usuário do conteúdo principal.\nd)Animação só pode ser utilizada, efetivamente, para sistemas com o público-alvo infantil.",
		"resposta":"a"
	},
	4:{
		"enunciado":"0 que são keyframes?",
		"alternativas":"a)são identificadores unicos de um frame.\nb)Ferramenta que elabora quadros intermediários entre quadros que são fornecidos ao sistema\nc)Filtros utilizado na renderização de objetos 3D.\nd)Uma ferramenta exclusiva softwares de animação open source",
		"resposta":"b"
	},
	5:{
		"enunciado":"Qual das alternativas abaixo NÃO é uma técnica de animação?",
		"alternativas":"a)rotoscopia\nb)stopmotion\nc)interpolling\nd)pixilation",
		"resposta":"c"
	},
	6:{
		"enunciado":"O que são animações Real Time?",
		"alternativas":"a)Animações que são geradas pelo computador à medida que são apresentadas na tela\nb)animação pré renderizada que é somente exibida pelo computador\nc)uma técnica de animação tradicional.\nd)Uma técnica de animação utilizada somente em cutscenes de jogos com modelos 3D.",
		"resposta":"a"
	},
	7:{
		"enunciado":"Qual a importancia das técnicas de animação tradicional para CGI?",
		"alternativas":"a)As duas são técnicas de animação muito distintas e não possuem muitos conhecimentos convergentes.\nb)CGI se utiliza somente do principio de comprimir e esticar.\nc)muitos conceitos da animação tradicional são utilizados em CGI, mesmo sendo feita somente com modelos 3D\nd)CGI utiliza inúmeros conceitos da animação tradicional como frame-by-frame e os príncipios da animação",
		"resposta":"d"
	},
	8:{
		"enunciado":"0 que caracteriza uma animação 3D?",
		"alternativas":"a)É um estilo de animação feita com modelos,profundidade e luz \nb)É um estilo de animação somente baseada em vetores\nc)É um estilo de animação que utiliza fotos de atores reais numa determinada frequencia de quadros por segundo\nd)É um estilo de animação que utiliza figuras reais numa sequencia de fotos",
		"resposta":"b"
	},
	9:{
		"enunciado":"Qual é a diferença entre animação bidimensional e animação tridimensional?",
		"alternativas":"a)Na animação bidimensional, a elaboração das imagens requer um processamento muito intensivo, ao contrário da animação tridimensional\nb)Técnicas de animação 2D tendem a focar em manipulação de imagens enquanto animações 3D geralmente constroem 'mundos' virtuais onde os objetos podem se mover e interagir.\nc)Toda animação feita por computadores é animação 3D, enquanto animações 2D são sempre feitas no papel.\nd)Animação 2D usa de interpolação para ser feita, enquanto animações 3D usam keyframes.",
		"resposta":"b"
	},
	10:{
		"enunciado":"O que é Rotoscopia?",
		"alternativas":"a)uma técnica de animação que permite criar a ilusão de movimento ao se manipular fisicamente objetos do mundo real e os fotografar frame a frame.\nb) Nome alternativo para animação tradicional\nc) Uma técnica usada para imitar animação tradicional usando softwares de computadores\nd) Técnica onde animadores fazem o traço de movimentos reais, frame a frame.",
		"resposta":"d"
	},
	11:{
		"enunciado":"O que é animação STOP MOTION?",
		"alternativas":"a)É um tipo de animação que utiliza vetores para criar a ilusão de movimento\nb) Nome alternativo para animação tradicional\nc)É um estilo de animação que utiliza movimentos de atores reais digitalizados pelo computador\nd)É um estilo de animação que utiliza fotos de objetos reais sendo movidos um pouquinho de cada vez. Quando juntamos as fotos, o movimento aparece",
		"resposta":"d"
	},
	12:{
		"enunciado":"Quais das alternativas abaixo NÃO é uma caracteristica comum entre animação tradicional e CGI?",
		"alternativas":"a)modelos, luz e profundidade.\nb) Taxa de quadros\nc)Cores\nd)os princípios de antecipação e  aceleração e desaceleração",
		"resposta":"a"
	},
	13:{
		"enunciado":"Quais desses formatos de arquivo são indicados para animações de longa duração com audio?",
		"alternativas":"a).MP3\nb).WAV\nc).MP4\nd).JPEG",
		"resposta":"c"
	},
	14:{
		"enunciado":"Qual a diferença entre animação 3D e STOP MOTION?",
		"alternativas":"a)Animação STOP MOTION só pode ser feita por computador.\nb)A animação STOP MOTION utiliza fotos de objetos reais em rápida sucessão enquanto que animação 3D utiliza modelos poligonais animados por computador\nc)A animação 3D é feita utilizando movimento de atores reais em um espaço virtual enquanto que STOP MOTION é feito utilizando desenhos 2D em rápida sucessão para criar a ilusão de movimento\nd)Animação STOP MOTION é uma técnica arcaíca de animação 3D, que não é mais utilizada no mercado.",
		"resposta":"b"
	},
}

func getQuestion(index):
	var pergunta = questions[index]["enunciado"];
	var alternativas = questions[index]["alternativas"];
	var resposta = questions[index]["resposta"];
	
	return [pergunta,alternativas,resposta];
