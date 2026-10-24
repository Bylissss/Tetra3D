class_name Game
extends Node3D

var score : int
var ui : Control
var current_tetra : Node3D
@export var tetraminos : Array[PackedScene]

func _ready() -> void:
	ui = $ui

func begin() -> void:
	ui.change_ui(UI.State.INGAME_MENU)

func quit() -> void:
	get_tree().quit()
