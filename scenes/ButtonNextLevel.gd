extends Button

@export var scene_name: String = "Level2"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + scene_name + ".tscn"))
