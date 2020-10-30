extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var t = 0.0;
var tf = 0.166;
var move_speed = 0.9;
var le:LineEdit = null;
var by = 0.0;
var bx = 0.0;
var e = 0.0;
var offset_;
var dir = 1;

# Called when the node enters the scene tree for the first time.
func _ready():
	print("fox ready!")
	le = get_parent().get_node(("LineEdit"));
	bx = le.get_rect().position.x;
	by = le.get_rect().position.y;
	e = bx + le.get_rect().size.x;
	offset_ = Vector2(get_rect().size.x / 2,get_rect().size.y / -2);
	set_pos(bx,by)
	pass # Replace with function body.
	
	
func set_pos(x,y):
	position.x = bx + offset_.x;
	position.y = by + offset_.y;
	pass

func _process(delta):
	t += delta;
	if(dir == 1 && position.x >= e):
		dir = -1
		scale.x = -1;
	if(dir == -1 && position.x <= bx):
		dir = 1
		scale.x = 1;
	if(t >= tf):
		t = 0.0;
		if(frame >= hframes - 1):
			frame = 0;
		frame += 1;
		print("frame = " + str(frame))
	position.x += dir * move_speed;
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
