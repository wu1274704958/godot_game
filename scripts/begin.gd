tool
extends Button

#export(Node2D) var line_edit
# Declare member variables here. Examples:
var rotate = 0.0 
# var b = "text"

func center_horiz():
	self.rect_pivot_offset = Vector2(self.get_size().x/2,self.get_size().y / 2);
	self.rect_position.x = (get_parent().get_size().x * get_parent().rect_scale.x - get_size().x) / 2;
	pass
# Called when the node enters the scene tree for the first time.

func _ready():
	center_horiz();
	print("i am ready");
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	rotate += delta;
#	if(rotate >= 360.0):
#		rotate = 0.0
#	self.set_rotation(rotate);
#	pass

func _pressed():
	var le = get_parent().get_node("LineEdit");
	print("pressed! "+le.text);
	pass
