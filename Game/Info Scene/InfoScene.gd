extends Control

@onready var back_button = $BackButton
@onready var exit_button = $ExitButton

func _ready():
	pass

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Game/Intro Scene/IntroScene.tscn")

func _on_exit_button_pressed():
	get_tree().quit()
