extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	var st:SurfaceTool = SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	st.add_normal(Vector3(0, 0, 1))
	st.add_uv(Vector2(0, 0))
	# Call last for each vertex, adds the above attributes.
	st.add_vertex(Vector3(-1, -1, 0))

	st.add_normal(Vector3(0, 0, 1))
	st.add_uv(Vector2(0, 1))
	st.add_vertex(Vector3(-1, 1, 0))

	st.add_normal(Vector3(0, 0, 1))
	st.add_uv(Vector2(1, 1))
	st.add_vertex(Vector3(1, 1, 0))
	
	var mesh:ArrayMesh = st.commit()
	
	var mat:Material = preload("res://textures/material.tres")
	
	var mi = MeshInstance.new()
	mi.mesh = mesh
	mi.material_override = mat
	add_child(mi)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
