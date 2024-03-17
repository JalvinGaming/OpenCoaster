extends PathFollow3D
func _ready():
	var track = load("res://woodtrack.tscn")
	var path = get_parent().curve
	for i in range(ceil(path.get_baked_length() / 0.1)):
		var newtrack = track.instantiate()
		get_parent().add_child.call_deferred(newtrack)
		newtrack.global_transform = global_transform
		progress += 0.1
	progress = 0
func _process(delta):
	progress += 5 * delta
