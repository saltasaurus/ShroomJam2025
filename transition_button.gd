class_name TransitionButton
extends Button

@export var next_scene: PackedScene
@onready var _transition_rect := $"../ScreenTransitionRect"

var was_pressed: bool = false # Prevents multi-clicking button during transition await

func _ready() -> void:
	button_up.connect(_on_button_released)

func _on_button_released():
	if not was_pressed:
		was_pressed = true
		_transition_rect.transition_to(next_scene)
		
