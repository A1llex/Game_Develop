extends Area2D
export (int) var Vel
var Mov =  Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	Mov =Vector2()
	
	if Input.is_action_just_pressed("ui_right"):
		Mov.x += 1
	if Input.is_action_just_pressed("ui_left"):
		Mov.x -= 1
	if Input.is_action_just_pressed("ui_up"):
		Mov.y -= 1
	if Input.is_action_just_pressed("ui_down"):
		Mov.y += 1
	if Mov.length() > 0 :
		Mov = Mov.normalized() * Vel
		
	position += Mov * delta
	
