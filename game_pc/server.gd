extends Control

func _ready():
	var peer = NetworkedMultiplayerENet.new()
	peer.create_server(9999,2)
	get_tree().network_peer = peer
	get_tree().connect("network_peer_connected",self,"client_connected")
	$Label.text=IP.resolve_hostname(str(OS.get_environment("COMPUTERNAME")),1)

func _on_Button_pressed():
	for i in User.user_id:
		rpc_id(i,"start_game",i)
	get_tree().change_scene("res://game.tscn")
	pass # Replace with function body.

func client_connected(id):
	$Button.show()
	User.user_id.append(id)
	var list=Label.new()
	list.text=str(id)
	$VBoxContainer.add_child(list)
