extends Spatial
var playerpos = $player.transform.origin

func _ready():
	$wall1.transform.origin = Vector3(playerpos.x, )
	
	
func _physics_process(delta):
	$wall1
