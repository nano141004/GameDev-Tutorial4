extends RigidBody2D

@export var scene_name: String = "LoseScreen"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass  # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + scene_name + ".tscn"))
	elif body.get_name() == "TileMapLayer":
		queue_free()
