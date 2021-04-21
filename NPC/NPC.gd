extends KinematicBody

onready var Dialouge = get_node("/root/Game/UI/Dialogue")
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
	
