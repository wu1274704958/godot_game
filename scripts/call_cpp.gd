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
	#test_call()
	create_tree()
	pass # Replace with function body.


func test_call():
	translate(Vector3(0,1,0))
	var y = 0;
	#call cpp function
	var m:MeshInstance = cpp_node.call("create_cube",6,30,4,27,24,0) 
	m.translation.y = y;
	y += 1;
	add_child(m)
	pass

func create_tree():
	var y = 0;
	
	for i in range(6):
		var m:MeshInstance = cpp_node.call("create_cube",12,30,12,30,12,12) 
		m.translation.y = y;
		y += 1;
		add_child(m)
	pass
	
	var m:MeshInstance = cpp_node.call("create_cube",26,26,26,26,26,26)
	m.translation.y = y;
	add_child(m)
	
	var m2:MeshInstance = cpp_node.call("create_cube",26,26,26,26,26,26)
	m2.translation.y = y - 1;
	m2.translation.x = 1;
	add_child(m2)
	
	var m3:MeshInstance = cpp_node.call("create_cube",26,26,26,26,26,26)
	m3.translation.y = y - 1;
	m3.translation.x = -1;
	add_child(m3)
	
	var m4:MeshInstance = cpp_node.call("create_cube",26,26,26,26,26,26)
	m4.translation.y = y - 1;
	m4.translation.z = -1;
	add_child(m4)
	
	var m5:MeshInstance = cpp_node.call("create_cube",26,26,26,26,26,26)
	m5.translation.y = y - 1;
	m5.translation.z = 1;
	add_child(m5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
