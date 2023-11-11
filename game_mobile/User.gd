extends Node

var user_id

func _ready():
	get_tree().connect("server_disconnected",self,"title")

func title():
	get_tree().network_peer = null
	get_tree().change_scene("res://main.tscn")
