extends Node2D

var player_position=Vector2(500,100)
var count:int=0

func _ready():
	for i in User.user_id:
		var player=str(i)
		player=preload("res://player.tscn").instance()
		player.position=player_position
		player_position.y+=64
		player.set_name(str(User.user_id[count]))
		player.set_network_master(User.user_id[count])
		$".".add_child(player)
		count+=1




