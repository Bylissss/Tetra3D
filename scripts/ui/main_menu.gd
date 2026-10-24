extends Control

var Play : Button
var Quit : Button
var Game : Node3D

func _ready() -> void:
	Play = $VBoxContainer/Play
	Quit = $VBoxContainer/Quit
	
	Play.pressed.connect(_on_play_pressed)
	Quit.pressed.connect(_on_quit_pressed)
	
	Game = owner
	
func _on_play_pressed() -> void:
	Game.begin()
	
func _on_quit_pressed() -> void :
	Game.quit()
	pass
