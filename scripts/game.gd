extends Node3D

enum States{
	BEGIN,
	GAME_OVER 
}

@export var state : States = States.BEGIN

func begin() -> void:
	pass

func _process(_delta: float) -> void:
	match state:
		
		States.BEGIN:
			pass
			
		States.GAME_OVER:
			pass
			
		_:
			pass
