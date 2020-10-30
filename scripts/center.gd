extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func center_horiz():
	self.rect_pivot_offset = Vector2(self.get_size().x/2,self.get_size().y / 2);
	self.rect_position.x = (get_parent().get_size().x - get_size().x) / 2;
	pass


# Called when the node enters the scene tree for the first time.
func _ready():
	center_horiz()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
