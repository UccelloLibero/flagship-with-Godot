extends Control

@onready var game_title = $MarginContainer/BoxContainer/Label
@onready var gameplay_label1 = $MarginContainer/BoxContainer/Label2
@onready var gameplay_label2 = $MarginContainer/BoxContainer/Label3
@onready var play_game_button = $PlayButton
@onready var about_game_button = $AboutButton

# Called when the node enters the scene tree for the first time.
func _ready():
	game_title.visible = true
	gameplay_label1.visible = true
	gameplay_label2.visible = true
	play_game_button.visible = true


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Game/MainScene.tscn")


func _on_about_button_pressed():
	get_tree().change_scene_to_file("res://Game/Info Scene/info_scene.tscn")
