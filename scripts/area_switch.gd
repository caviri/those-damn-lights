extends Area2D

var is_turned_on: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if is_turned_on:
		$PointLight2D.show()
	else:
		$PointLight2D.hide()
	pass

func _on_body_entered(body):
	if body.name == "kid" and !is_turned_on:
		is_turned_on = true
		Globals.lights_up +=1
	if body.name == "player" and is_turned_on:
		is_turned_on = false
		Globals.lights_up -=1
