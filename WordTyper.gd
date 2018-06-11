extends Node

var text = "composer update"
var dist = 0

onready var cmd = $Cmd/Screen/TypeHere

func _ready():
	cmd.text = ""

func type_next_letter():
	dist += 1
	if dist <= text.length():
		cmd.text = text.substr(0, dist)
	else:
		$Timer.stop()

func _on_Timer_timeout():
	type_next_letter()
