extends Node
#perguntas e respostas tem index equivalente

const questions = {
	0:{
		"enunciado":"O que é video?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"a"
	},
	1:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	2:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	3:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	4:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	5:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	6:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
	},
	7:{
		"enunciado":"0 que é uma imagem?",
		"alternativas":"a)alt1\nb)alt2\nc)alt3\nd)alt4",
		"resposta":"b"
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
