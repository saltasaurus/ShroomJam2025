class_name SceneTransitionRect
extends ColorRect

@export var next_scene: PackedScene

@onready var _anim_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	_anim_player.play_backwards("Fade")
	
func transition_to(_next_scene := next_scene) -> void:
	# Plays Fade animation and waits until it finishes
	_anim_player.play("Fade")
	await _anim_player.animation_finished
	
	get_tree().change_scene_to_packed(_next_scene)
