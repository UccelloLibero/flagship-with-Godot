extends Control

@onready var play_game_button = $Control/Panel/VBoxContainer2/PlayFlagship
@onready var about_game_button = $Control/Panel/VBoxContainer2/AboutFlagship
@onready var learn_flags = $Control/Panel/VBoxContainer2/LearnFlags


func _on_play_flagship_pressed():
	get_tree().change_scene_to_file("res://Game/Game Scene/main_play.tscn")


func _on_about_flagship_pressed():
	get_tree().change_scene_to_file("res://Game/Info Scene/about_game.tscn")


func _on_learn_flags_pressed():
	get_tree().change_scene_to_file("res://Game/Info Scene/learn_more.tscn")
