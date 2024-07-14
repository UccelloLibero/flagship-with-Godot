extends Control

@onready var play = $Control/Panel/VBoxContainer/Play
@onready var quit = $Control/Panel/VBoxContainer/Quit


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Game/Game Scene/main_play.tscn")


func _on_quit_pressed():
	get_tree().quit()
