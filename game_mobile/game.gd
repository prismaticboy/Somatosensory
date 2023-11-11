extends Node2D


func _ready():
	var player = str(User.user_id)
	player=preload("res://player.tscn").instance()
	player.set_name(str(User.user_id))
	player.set_network_master(User.user_id)
	$".".add_child(player)
	
	

