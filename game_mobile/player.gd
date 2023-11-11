extends Sprite

var pos=Vector2.ZERO

func _ready():
	rpc_id(1,"hello","hello")
	
func _process(delta):
	var gravity=Input.get_gravity()
	pos.x=gravity.x
	pos.y=-gravity.y
	$".".position=pos*25
	rpc_unreliable("_set_position",position)	
