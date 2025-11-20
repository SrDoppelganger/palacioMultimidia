extends Node

@onready var bgm = %bgm


func playMusic(track):
	match track:
		"placeholder":
			if bgm.playing == true:
				return;
			bgm.playing = true;
			#caso for colocar outras musicas, lembra de coloca-las como false

#muta todas as musicas
func muteMusic():
	bgm.playing = false;
