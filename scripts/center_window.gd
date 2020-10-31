extends ViewportContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var expect_w = 1024

onready var viewport = $"../Viewport"
onready var sprite = $"texture3d"
# Called when the node enters the scene tree for the first time.
func _ready():
	var scale = OS.window_size.x / expect_w;
	print("scale " + str(scale))
	rect_scale.x = scale;
	rect_scale.y = scale;
	self.set_position(Vector2((OS.window_size.x - get_size().x * scale) / 2,(OS.window_size.y - get_size().y * scale)/2));
	
	init_texture_3d()
	pass # Replace with function body.

func init_texture_3d():
	sprite.texture = viewport.get_texture()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
