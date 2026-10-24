class_name UI
extends Control

var main_menu : Control
var ingame_menu : Control
var game_over_menu : Control

var state : State

enum State{
	MAIN_MENU,
	INGAME_MENU,
	GAME_OVER_MENU
}

func _ready() -> void:
	main_menu = $MainMenu
	ingame_menu = $IngameMenu
	game_over_menu = $GameOverMenu

func change_ui(state : State):
	match state:
		
		State.MAIN_MENU:
			main_menu.visible = true
			ingame_menu.visible = false
			game_over_menu.visible = false
			
		State.INGAME_MENU:
			main_menu.visible = false
			ingame_menu.visible = true
			game_over_menu.visible = false
			
		State.GAME_OVER_MENU:
			main_menu.visible = false
			ingame_menu.visible = false
			game_over_menu.visible = true
		
func _process(delta: float) -> void:
	pass
