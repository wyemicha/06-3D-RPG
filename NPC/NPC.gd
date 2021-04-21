extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")
var dialogue = [
	"WHAT? YOU'LL NEVER TAKE ME ALI- (press E to continue)",
	"Oh! Howdy stranger! You haven't heard of any escapin' from the county jail recently, have ya?",
	"No? Good. I reckon it'll be years before they notice.",
	"Say, you've got a mighty fine weapon there partner! Maybe if you're a good shot, you could roll with us for a while.",
	"...",
	"Hmm, quite the silent type. Tell ya what, if you can hit all four of them there targets before I finish pitchin' this tent, you've got yourself a posse",
	"Now, it won't be that easy! You'll have to deal with my partner 'n crime, ol' Jimbo, and let me tell ya, he's a doozy!"
]
func _ready():
	$AnimationPlayer.play("CrouchIdle")
	Dialogue.connect("finished_dialogue", self, "finished")
	


func _on_Area_body_entered(_body):
	Dialogue.start_dialogue(dialogue)


func _on_Area_body_exited(_body):
	Dialogue.hide_dialogue()
	
func finished():
	get_node("/root/Game/Target_container").show()
	Global.timer = 120
	Global.update_time()
	get_node("/root/Game/UI/Timer").start()
