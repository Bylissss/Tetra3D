extends Control

var pause_resume : Button
var score_text : Label
@export var pause_icon : Texture2D
@export var resume_icon : Texture2D

func _ready() -> void:
	pause_resume = $Pause_Resume
	score_text = $Score

	pause_resume.pressed.connect(_on_pause_resume_pressed)

func _on_pause_resume_pressed() -> void:
	if(get_tree().paused == false):
		get_tree().paused = true
		pause_resume.icon = resume_icon
	else:
		get_tree().paused = false
		pause_resume.icon = pause_icon
