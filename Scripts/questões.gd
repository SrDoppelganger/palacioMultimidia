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
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	9:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	10:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
}

func getQuestion(index):
	var pergunta = questions[index]["enunciado"];
	var alternativas = questions[index]["alternativas"];
	var resposta = questions[index]["resposta"];
	
	return [pergunta,alternativas,resposta];
