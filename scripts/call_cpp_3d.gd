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

onready var cpp_node = $"../CppNode"
# Called when the node enters the scene tree for the first time.
func _ready():
	print("GDNode ready")
	translate(Vector3(0,1,0))
	test_call()
	#create_tree()
	pass # Replace with function body.


func test_call():
	
	cpp_node.call("add_voxel",15,Vector3(0,1,0))
	cpp_node.call("add_voxel",16,Vector3(0,1,-1))
	cpp_node.call("add_voxel",16,Vector3(0,1,1))
	cpp_node.call("add_voxel",16,Vector3(-1,1,0))
	cpp_node.call("add_voxel",17,Vector3(1,1,0))
	pass

func create_tree():
	var y = 1;
	
	for i in range(6):
		var ok = cpp_node.call("add_voxel",16,Vector3(0,y,0))
		y += 1
	pass
	
	var ok = cpp_node.call("add_voxel",8,Vector3(0,y,0))
	
	ok = cpp_node.call("add_voxel",8,Vector3(1,y - 1,0))
	
	ok = cpp_node.call("add_voxel",8,Vector3(-1,y - 1,0))
	
	ok = cpp_node.call("add_voxel",8,Vector3(0,y - 1,-1))
	
	ok = cpp_node.call("add_voxel",8,Vector3(0,y - 1,1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
