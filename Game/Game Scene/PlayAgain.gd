# PlayAgain.gd
extends Control

# Nodes
@onready var play_again_yes = $Control/Panel/VBoxContainer/HBoxContainer/PlayAgainYes
@onready var play_again_no = $Control/Panel/VBoxContainer/HBoxContainer/PlayAgainNo
@onready var stats_label = $Control/Panel/VBoxContainer/Panel/StatsLabel




func _on_play_again_yes_pressed():
	get_tree().change_scene_to_file("res://Game/Game Scene/control.tscn")

func _on_play_again_no_pressed():
	get_tree().quit()
