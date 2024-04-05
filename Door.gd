extends StaticBody2D

@export var next_level: String
var loaded_level: PackedScene

func _ready():
	loaded_level = load("res://" + next_level + ".tscn")


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		call_deferred("load_next_level")

func load_next_level():
	get_tree().change_scene_to_packed(loaded_level)
