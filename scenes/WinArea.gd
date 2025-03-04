extends Area2D

@export var sceneName1: String = "WinScreen"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + sceneName1 + ".tscn"))
