extends Control


func _ready():
	$Label.text = "You win! Your final score was " + str(Global.score)


func _on_Play_pressed():
	pass # Replace with function body.


func _on_Quit_pressed():
	pass # Replace with function body.
