extends Node2D

# Declare variables
var flags = [
	{"image": preload("res://Assets/Flags/Afganistan.png"), "answers": ["Afganistan", "Uganda", "Baharin"], "correct": 0},
	{"image": preload("res://Assets/Flags/Albania.png"), "answers": ["Canada", "Guam", "Albania"], "correct": 2},
	{"image": preload("res://Assets/Flags/Algeria.png"), "answers": ["Malawi", "Algeria", "Scotland"], "correct": 1},
	{"image": preload("res://Assets/Flags/Andora.png"), "answers": ["Ukraine", "Turkey", "Andora"], "correct": 2},
	{"image": preload("res://Assets/Flags/Angola.png"), "answers": ["Angola", "Malta", "Fiji"], "correct": 0},
	{"image": preload("res://Assets/Flags/Antigua and Barbuda.png"), "answers": ["Austria", "Antigua and Barbuda", "Grenada"], "correct": 1},
	{"image": preload("res://Assets/Flags/Argentina.png"), "answers": ["Argentina", "Botswana", "Panama"], "correct": 0},
	{"image": preload("res://Assets/Flags/Armenia.png"), "answers": ["Armenia", "Romania", "Quatar"], "correct": 0},	
	{"image": preload("res://Assets/Flags/Aruba.png"), "answers": ["Nepal", "Poland", "Aruba"], "correct": 2},
	{"image": preload("res://Assets/Flags/Australia.png"), "answers": ["Austria", "Australia", "Armenia"], "correct": 1},				
	{"image": preload("res://Assets/Flags/Austria.png"), "answers": ["Austria", "Norway", "Australia"], "correct": 0},				
	{"image": preload("res://Assets/Flags/Azerbaijan.png"), "answers": ["Argentina", "Tajikistan", "Azerbaijan"], "correct": 2},				
	{"image": preload("res://Assets/Flags/Bahrain.png"), "answers": ["Bahrain", "Belarus", "Belgium"], "correct": 0},				
	{"image": preload("res://Assets/Flags/Bangladesh.png"), "answers": ["Argentina", "Bangladesh", "Panama"], "correct": 1},				
	{"image": preload("res://Assets/Flags/Barbados.png"), "answers": ["Cyprus", "Costa Rica", "Barbados"], "correct": 2},
	{"image": preload("res://Assets/Flags/Belarus.png"), "answers": ["Belarus", "Russia", "Moldova"], "correct": 0},	
	{"image": preload("res://Assets/Flags/Belgium.png"), "answers": ["Germany", "Belgium", "France"], "correct": 1},	
	{"image": preload("res://Assets/Flags/Belize.png"), "answers": ["Mali", "Mauritius", "Belize"], "correct": 2},
	{"image": preload("res://Assets/Flags/Benin.png"), "answers": ["Benin", "Mexico", "Japan"], "correct": 0},																		
	{"image": preload("res://Assets/Flags/Bhutan.png"), "answers": ["Maldives", "Bhutan", "Georgia"], "correct": 1},																		
	{"image": preload("res://Assets/Flags/Bolivia.png"), "answers": ["Laos", "Oman", "Bolivia"], "correct": 2},																		
	{"image": preload("res://Assets/Flags/Bonaire.png"), "answers": ["Paraguay", "Pakistan", "Bonaire"], "correct": 2},																		
	{"image": preload("res://Assets/Flags/Bosnia and Herzegovina.png"), "answers": ["Croatia", "Bosnia and Herzegovina", "Slovenia"], "correct": 1},																		
	{"image": preload("res://Assets/Flags/Botswana.png"), "answers": ["Benin", "Botswana", "Portugal"], "correct": 1},																		
	{"image": preload("res://Assets/Flags/Brazil.png"), "answers": ["Portugal", "Brazil", "Colombia"], "correct": 1},																		
	{"image": preload("res://Assets/Flags/Brunei.png"), "answers": ["Brunei", "Monaco", "China"], "correct": 0},																		
	{"image": preload("res://Assets/Flags/Bulgaria.png"), "answers": ["Hungary", "Bulgaria", "Finland"], "correct": 1},																		
	{"image": preload("res://Assets/Flags/Burkina Faso.png"), "answers": ["Luxembourg", "Jordan", "Burkina Faso"], "correct": 2},																		
	{"image": preload("res://Assets/Flags/Burundi.png"), "answers": ["Benin", "Bhutan", "Burundi"], "correct": 2},																		
																													
																		
	# Add more flags here
]
var current_flag = {}
var score = 0
var time_left = 60

# Nodes
@onready var flag_image = $Control/TextureRect
@onready var button1 = $Control/Button
@onready var button2 = $Control/Button2
@onready var button3 = $Control/Button3
@onready var timer = $Timer
@onready var time_label = $Control/TimeLabel
@onready var stats_label = $Control/StatsLabel
@onready var restart_button = $Control/RestartButton
@onready var quit_button = $Control/QuitButton

func _ready():
	stats_label.visible = true
	_start_new_round()
	timer.start()

func _process(delta):
	time_label.text = str(time_left)
	if time_left <= 0:
		_end_game()

func _on_timer_timeout():
	time_left -= 1
	

# Function that randomly displayes flags with answers from the list
func _start_new_round():
	current_flag = flags[randi() % flags.size()]
	flag_image.texture = current_flag["image"]
	button1.text = current_flag["answers"][0]
	button2.text = current_flag["answers"][1]
	button3.text = current_flag["answers"][2]
	stats_label.text = str(score)
	
	
# Buttons 
func _on_button_pressed():
	_check_answer(0)

func _on_button_2_pressed():
	_check_answer(1)

func _on_button_3_pressed():
	_check_answer(2)
	
# Function that checks whether the selected answer is correct and updates score accordingly
func _check_answer(answer_index):
	if answer_index == current_flag["correct"]:
		score += 1
	_start_new_round()

# End game function that displays all stats and supports play again logic
func _end_game():
	timer.stop()
	flag_image.visible = false
	button1.visible = false
	button2.visible = false
	button3.visible = false
	stats_label.visible = true
	stats_label.text = "Game Over! Your score: " + str(score) + "\nPlay Again?"

# Restart play, timer and stats
func _on_restart_button_pressed():
	score = 0
	time_left = 60
	flag_image.visible = true
	button1.visible = true
	button2.visible = true
	button3.visible = true
	stats_label.visible = false
	_start_new_round()
	timer.start()

# Quit the game
func _on_quit_button_pressed():
	get_tree().quit()

