extends Area2D
class_name NPC

@export var meow: SpriteFrames
@export_multiline() var text: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.sprite_frames = meow


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
