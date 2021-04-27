extends Control


func _ready():
	$Label.text = "You died! Your score was " + str(Global.score)
		 


func _on_Play_pressed():
	Global.reset()
	get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	get_tree().quit()
