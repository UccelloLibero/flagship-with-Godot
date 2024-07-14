extends Control

@onready var play = $Control/Panel/VBoxContainer2/Play
@onready var quit = $Control/Panel/VBoxContainer2/Quit
@onready var learnflags = $Control/Panel/VBoxContainer2/LearnFlags


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Game/Game Scene/main_play.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_learn_flags_pressed():
	get_tree().change_scene_to_file("res://Game/Info Scene/learn_more.tscn")
