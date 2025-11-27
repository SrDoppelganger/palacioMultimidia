extends Node

@onready var bgm = %bgm
var music_bus = AudioServer.get_bus_index("Music")

func playMusic(track):
	match track:
		"placeholder":
			if bgm.playing == true:
				return;
			else:
				bgm.playing = true;
			#caso for colocar outras musicas, lembra de coloca-las como false

#muta todas as musicas
func muteMusic():
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus));

func pauseMusic():
	bgm.playing = false;
