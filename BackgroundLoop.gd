extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Main_gameOver():
	stop()


func _on_Main_newGame():
	pitch_scale = 1.0
	play()


func _on_Main_scoreAdded(newScore):
	if (newScore % 10 == 0):
		pitch_scale += 0.1
