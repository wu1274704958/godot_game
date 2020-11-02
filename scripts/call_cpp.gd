extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#	0 => front
#	1 => down
#	2 => right
#	3 => up
#	4 => left
#	5 => behind  

onready var cpp_node = $".."
# Called when the node enters the scene tree for the first time.
func _ready():
	print("GDNode ready")
	#translate(Vector3(0,3,0))
	#var y = 0;
	#for i in range(5):
	# call cpp function
	#var m:MeshInstance = cpp_node.call("create_cube",6,30,4,27,24,0) 
	#m.translation.y = y;
	#y += 1;
	#add_child(m)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
