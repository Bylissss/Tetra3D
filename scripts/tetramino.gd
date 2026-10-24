extends Node3D

var pieces : Array[Node]
var mat : StandardMaterial3D = StandardMaterial3D.new()

func _ready() -> void:
	
	mat.albedo_color = Color(randf(),randf(),randf(),1)
	
	pieces = get_children()
	for piece in pieces:
		piece.get_node("MeshInstance3D").set_surface_override_material(0, mat)
	
func _process(delta: float) -> void:
	pass
