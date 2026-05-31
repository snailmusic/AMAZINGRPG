extends Control

var texts = []
var index = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func start_dialogue(text: String):
	get_tree().paused=true
	texts = text.split("\n")
	display_line(0)

func display_line(idx: int):
	$PanelContainer/RichTextLabel.text = texts[idx]

func advance_line():
	index += 1
	if (index >= len(texts)):
		index = 0
		$PanelContainer/RichTextLabel.text = ""
		get_tree().paused=false
	else:
		display_line(index)

func _input(event: InputEvent) -> void:
	if (event is InputEventKey):
		if event.keycode == KEY_A and event.pressed == true:
			advance_line()
