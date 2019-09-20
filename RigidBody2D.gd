extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 50
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.linear_velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		self.linear_velocity = Vector2(speed,0)
	if Input.is_action_pressed("ui_left"):
		self.linear_velocity = Vector2(-speed,0)
	if Input.is_action_pressed("ui_up"):
		self.linear_velocity = Vector2(0,-speed)
	if Input.is_action_pressed("ui_down"):
		self.linear_velocity = Vector2(0,speed)
#	pass
