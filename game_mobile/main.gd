extends Control
onready var line_edit = $LineEdit

func _ready():
	get_tree().connect("network_peer_connected",self,"connected")

func _on_Button_pressed():
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client(line_edit.text,9999)
	get_tree().network_peer = peer
	
remote func start_game(id):
	User.user_id=id
	get_tree().change_scene("res://game.tscn")
	
func connected(id):
	self.hide()
	

