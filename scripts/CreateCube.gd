extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var arr = []
	arr.resize(Mesh.ARRAY_MAX)

	# PoolVectorXXArrays for mesh construction.
	var verts = PoolVector3Array()
	var uvs = PoolVector2Array()
	var normals = PoolVector3Array()
	var indices = PoolIntArray()
	
	verts.append(Vector3(-1.0,0.0,0.0))
	verts.append(Vector3(-1.0,1.0,0.0))
	verts.append(Vector3(1.0,1.0,0.0))
	verts.append(Vector3(-1.0,0.0,0.0))
	verts.append(Vector3(1.0,1.0,0.0))
	verts.append(Vector3(1.0,0.0,0.0))
	
	#indices = [ 0,1,2 ]
	#######################################
	## Insert code here to generate mesh ##
	#######################################

	# Assign arrays to mesh array.
	arr[Mesh.ARRAY_VERTEX] = verts
	#arr[Mesh.ARRAY_TEX_UV] = uvs
	#arr[Mesh.ARRAY_NORMAL] = normals
	#arr[Mesh.ARRAY_INDEX] = indices
	var mesh = Mesh.new()
	# Create mesh surface from mesh array.
	mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arr)
	Material.new(
	
	var mi = MeshInstance.new()
	mi.mesh = mesh
	add_child(mi)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
