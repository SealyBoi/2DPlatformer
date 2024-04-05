extends Camera2D

@onready var player = get_parent().get_node("Player")
var os = 10

func _physics_process(delta):
	position = lerp(position, player.global_position, os * delta)
