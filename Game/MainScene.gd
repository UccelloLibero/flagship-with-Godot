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
	{"image": preload("res://Assets/Flags/Bahamas.png"), "answers": ["Bahamas", "Bhutan", "Burundi"], "correct": 0},
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
	{"image": preload("res://Assets/Flags/Cabo Verde.png"), "answers": ["Aremenia", "Cabo Verde", "Kiribati"], "correct": 1},
	{"image": preload("res://Assets/Flags/Cambodia.png"), "answers": ["Cambodia", "Liechtenstein", "Mongolia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Cameroon.png"), "answers": ["Benin", "Myanmar", "Cameroon"], "correct": 2},
	{"image": preload("res://Assets/Flags/Canada.png"), "answers": ["Malta", "Canada", "Japan"], "correct": 1},
	{"image": preload("res://Assets/Flags/Central African Republic.png"), "answers": ["India", "Lesotho", "Central African Republic"], "correct": 2},
	{"image": preload("res://Assets/Flags/Chad.png"), "answers": ["Chad", "China", "Chile"], "correct": 0},
	{"image": preload("res://Assets/Flags/Chile.png"), "answers": ["China", "Chile", "Chad"], "correct": 1},
	{"image": preload("res://Assets/Flags/China.png"), "answers": ["China", "Chad", "Chile"], "correct": 1},
	{"image": preload("res://Assets/Flags/Colombia.png"), "answers": ["Bolivia", "Colombia", "Panama"], "correct": 1},
	{"image": preload("res://Assets/Flags/Comoros.png"), "answers": ["Comoros", "Italy", "Laos"], "correct": 0},
	{"image": preload("res://Assets/Flags/Costa Rica.png"), "answers": ["Indonesia", "Costa Rica", "Cuba"], "correct": 1},
	{"image": preload("res://Assets/Flags/Croatia.png"), "answers": ["Croatia", "Czech Republic", "Cambodia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Cuba.png"), "answers": ["Kiribati", "Fiji", "Cuba"], "correct": 2},
	{"image": preload("res://Assets/Flags/Curaçao.png"), "answers": ["Angola", "Curaçao", "Bahamas"], "correct": 1},
	{"image": preload("res://Assets/Flags/Cyprus.png"), "answers": ["Micronesia", "Greek", "Cyprus"], "correct": 2},
	{"image": preload("res://Assets/Flags/Czech Republic.png"), "answers": ["Slovenia", "Czech Republic", "Moldova"], "correct": 1},
	{"image": preload("res://Assets/Flags/Côte d'Ivoire.png"), "answers": ["Senegal", "Ireland", "Côte d'Ivoire"], "correct": 2},
	{"image": preload("res://Assets/Flags/Democratic Republic of the Congo.png"), "answers": ["Sudan", "Democratic Republic of the Congo", "Samoa"], "correct": 1},
	{"image": preload("res://Assets/Flags/Denmark.png"), "answers": ["Denmark", "Finland", "Sweden"], "correct": 0},
	{"image": preload("res://Assets/Flags/Djibouti.png"), "answers": ["Ethiopia", "Gambia", "Djibouti"], "correct": 2},
	{"image": preload("res://Assets/Flags/Dominica.png"), "answers": ["Dominica", "Gabon", "Mauritius"], "correct": 0},
	{"image": preload("res://Assets/Flags/Dominican Republic.png"), "answers": ["Moldova", "Dominican Republic", "Paraguay"], "correct": 1},
	{"image": preload("res://Assets/Flags/East Timor.png"), "answers": ["Costa Rica", "South Sudan", "East Timor"], "correct": 2},
	{"image": preload("res://Assets/Flags/Ecuador.png"), "answers": ["Eritrea", "Ecuador", "Ethiopia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Egypt.png"), "answers": ["Tunisia", "Morocco", "Egypt"], "correct": 2},
	{"image": preload("res://Assets/Flags/El Salvador.png"), "answers": ["Urugway", "El Salvador", "Bolivia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Equatorial Guinea.png"), "answers": ["Marshall Islands", "South Africa", "Equatorial Guinea"], "correct": 2},
	{"image": preload("res://Assets/Flags/Eritrea.png"), "answers": ["Eritrea", "Maldives", "Thailand"], "correct": 0},
	{"image": preload("res://Assets/Flags/Estonia.png"), "answers": ["Nauru", "Tuvalu", "Estonia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Eswatini.png"), "answers": ["Eswatini", "Namibia", "Cameroon"], "correct": 0},
	{"image": preload("res://Assets/Flags/Ethiopia.png"), "answers": ["Jamaica", "Ethiopia", "Nauru"], "correct": 1},
	{"image": preload("res://Assets/Flags/Faroe Islands.png"), "answers": ["Cabo Verde", "Equatorial Guinea", "Faroe Islands"], "correct": 2},
	{"image": preload("res://Assets/Flags/Federated State of Micronesia.png"), "answers": ["Bosnia and Herzegovina", "Federated State of Micronesia", "Antigua and Barbuda"], "correct": 1},
	{"image": preload("res://Assets/Flags/Fiji.png"), "answers": ["Fiji", "Chad", "Laos"], "correct": 0},
	{"image": preload("res://Assets/Flags/Finland.png"), "answers": ["Denmark", "Finland", "Sweden"], "correct": 1},
	{"image": preload("res://Assets/Flags/France.png"), "answers": ["Netherlands", "Paraguay", "France"], "correct": 2},
	{"image": preload("res://Assets/Flags/Gabon.png"), "answers": ["Gabon", "Iran", "Laus"], "correct": 0},
	{"image": preload("res://Assets/Flags/Georgia.png"), "answers": ["Russia", "Moldova", "Georgia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Germany.png"), "answers": ["Netherlands", "Germany", "Austria"], "correct": 1},
	{"image": preload("res://Assets/Flags/Ghana.png"), "answers": ["Ghana", "Jordan", "Iraq"], "correct": 0},
	{"image": preload("res://Assets/Flags/Greece.png"), "answers": ["Romania", "Greece", "Italy"], "correct": 1},
	{"image": preload("res://Assets/Flags/Greenland.png"), "answers": ["Ireland", "United Kingdom", "Greenland"], "correct": 2},
	{"image": preload("res://Assets/Flags/Grenada.png"), "answers": ["Grenada", "Cameroon", "Malawi"], "correct": 0},
	{"image": preload("res://Assets/Flags/Guadeloupe.png"), "answers": ["Maldives", "Guadeloupe", "Portugal"], "correct": 1},
	{"image": preload("res://Assets/Flags/Guam.png"), "answers": ["Palau", "Guam", "Singapore"], "correct": 1},
	{"image": preload("res://Assets/Flags/Guatemala.png"), "answers": ["Guatemala", "Samoa", "Togo"], "correct": 0},
	{"image": preload("res://Assets/Flags/Guinea-Bissau.png"), "answers": ["Namibia", "Suriname", "Guinea-Bissau"], "correct": 2},
	{"image": preload("res://Assets/Flags/Guinea.png"), "answers": ["Guinea", "Monaco", "Ethiopia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Guyana.png"), "answers": ["France", "Croatia", "Guyana"], "correct": 2},
	{"image": preload("res://Assets/Flags/Haiti.png"), "answers": ["Haiti", "Georgia", "Serbia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Honduras.png"), "answers": ["Bolivia", "Honduras", "Estonia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Hungary.png"), "answers": ["Hungary", "Finland", "Albania"], "correct": 0},
	{"image": preload("res://Assets/Flags/Iceland.png"), "answers": ["Iceland", "Greenland", "Bosnia and Herzegovina"], "correct": 0},
	{"image": preload("res://Assets/Flags/India.png"), "answers": ["Brazil", "India", "Liberia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Indonesia.png"), "answers": ["Indonesia", "Japan", "Viet Nam"], "correct": 0},
	{"image": preload("res://Assets/Flags/Iran.png"), "answers": ["Malta", "Iran", "Nepal"], "correct": 1},
	{"image": preload("res://Assets/Flags/Iraq.png"), "answers": ["Iraq", "Armenia", "Romania"], "correct": 0},
	{"image": preload("res://Assets/Flags/Ireland.png"), "answers": ["Spain", "Ireland", "Wales"], "correct": 1},
	{"image": preload("res://Assets/Flags/Israel.png"), "answers": ["Israel", "Tuvalu", "Somalia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Italy.png"), "answers": ["Mali", "Romania", "Italy"], "correct": 2},
	{"image": preload("res://Assets/Flags/Jamaica.png"), "answers": ["Jamaica", "Dominica", "Bulgaria"], "correct": 0},
	{"image": preload("res://Assets/Flags/Japan.png"), "answers": ["Bahrain", "Japan", "Austria"], "correct": 1},
	{"image": preload("res://Assets/Flags/Jordan.png"), "answers": ["Guinea", "Burkina Faso", "Jordan"], "correct": 2},
	{"image": preload("res://Assets/Flags/Kazakhstan.png"), "answers": ["Kazakhstan", "Ireland", "Oman"], "correct": 0},
	{"image": preload("res://Assets/Flags/Kenya.png"), "answers": ["South Africa", "Kenya", "Togo"], "correct": 1},
	{"image": preload("res://Assets/Flags/Kiribati.png"), "answers": ["Kiribati", "Turkmenistan", "Senegal"], "correct": 0},
	{"image": preload("res://Assets/Flags/Kosovo.png"), "answers": ["Bosnia and Herzegovina", "Kosovo", "Montenegro"], "correct": 1},
	{"image": preload("res://Assets/Flags/Kuwait.png"), "answers": ["Ukraine", "Samoa", "Kuwait"], "correct": 2},
	{"image": preload("res://Assets/Flags/Kyrgyzstan.png"), "answers": ["Yemen", "Kyrgyzstan", "Turkey"], "correct": 1},
	{"image": preload("res://Assets/Flags/Laos.png"), "answers": ["Laos", "Zambia", "Qatar"], "correct": 0},
	{"image": preload("res://Assets/Flags/Latvia.png"), "answers": ["Poland", "Latvia", "Moldova"], "correct": 1},
	{"image": preload("res://Assets/Flags/Lebanon.png"), "answers": ["Lebanon", "Romania", "Honduras"], "correct": 0},
	{"image": preload("res://Assets/Flags/Lesotho.png"), "answers": ["Haiti", "Iran", "Lesotho"], "correct": 2},
	{"image": preload("res://Assets/Flags/Liberia.png"), "answers": ["Yemen", "Liberia", "Jordan"], "correct": 1},
	{"image": preload("res://Assets/Flags/Libya.png"), "answers": ["Libya", "Ecuador", "Chad"], "correct": 0},
	{"image": preload("res://Assets/Flags/Liechtenstein.png"), "answers": ["Vatican City", "Spain", "Liechtenstein"], "correct": 2},
	{"image": preload("res://Assets/Flags/Lithuania.png"), "answers": ["El Salvador", "Lithuania", "Congo"], "correct": 1},
	{"image": preload("res://Assets/Flags/Luxembourg.png"), "answers": ["Luxembourg", "Italy", "Austria"], "correct": 0},
	{"image": preload("res://Assets/Flags/Macao.png"), "answers": ["Macao", "Palau", "Mauritania"], "correct": 0},
	{"image": preload("res://Assets/Flags/Madagascar.png"), "answers": ["Malawi", "Mali", "Madagascar"], "correct": 2},
	{"image": preload("res://Assets/Flags/Malawi.png"), "answers": ["Malawi", "Guyana", "Bolivia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Malaysia.png"), "answers": ["Pakistan", "Italy", "Malaysia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Maldives.png"), "answers": ["Maldives", "Paraguay", "Nicaragua"], "correct": 0},
	{"image": preload("res://Assets/Flags/Mali.png"), "answers": ["Myanmar", "Mozambique", "Mali"], "correct": 2},
	{"image": preload("res://Assets/Flags/Malta.png"), "answers": ["Malta", "Monaco", "Madagascar"], "correct": 0},
	{"image": preload("res://Assets/Flags/Marshall Islands.png"), "answers": ["Saint Lucia", "Marshall Islands", "Dominican Republic"], "correct": 1},
	{"image": preload("res://Assets/Flags/Mauritania.png"), "answers": ["Mauritania", "Equatorial Guinea", "Kuwait"], "correct": 0},
	{"image": preload("res://Assets/Flags/Mexico.png"), "answers": ["Argentina", "Mexico", "Colombia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Moldova.png"), "answers": ["Moldova", "Poland", "Belarus"], "correct": 0},
	{"image": preload("res://Assets/Flags/Monaco.png"), "answers": ["Monaco", "Estonia", "Panama"], "correct": 0},
	{"image": preload("res://Assets/Flags/Mongolia.png"), "answers": ["Venezuela", "Slovenia", "Mongolia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Montenegro.png"), "answers": ["Montenegro", "Bosnia and Herzegovina", "Albania"], "correct": 0},
	{"image": preload("res://Assets/Flags/Morocco.png"), "answers": ["Viet Nam", "Morocco", "Tunisia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Mozambique.png"), "answers": ["Sao Tome and Principe", "Zambia", "Mozambique"], "correct": 2},
	{"image": preload("res://Assets/Flags/Myanmar.png"), "answers": ["Myanmar", "Papua New Guinea", "Saudi Arabia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Namibia.png"), "answers": ["Nigeria", "Namibia", "Nauru"], "correct": 1},
	{"image": preload("res://Assets/Flags/Nauru.png"), "answers": ["Curaçao", "Nauru", "Palau"], "correct": 1},
	{"image": preload("res://Assets/Flags/Nepal.png"), "answers": ["Monaco", "Philippines", "Nepal"], "correct": 2},
	{"image": preload("res://Assets/Flags/Netherlands.png"), "answers": ["Netherlands", "Denmark", "Finland"], "correct": 0},
	{"image": preload("res://Assets/Flags/New Caledonia.png"), "answers": ["Dominica", "Bulgaria", "New Caledonia"], "correct": 2},
	{"image": preload("res://Assets/Flags/New Zealand.png"), "answers": ["Australia", "New Zealand", "United Kingdom"], "correct": 1},
	{"image": preload("res://Assets/Flags/Nicaragua.png"), "answers": ["Nicaragua", "Zambia", "Mozambique"], "correct": 0},
	{"image": preload("res://Assets/Flags/Niger.png"), "answers": ["Niue", "Niger", "Nigeria"], "correct": 1},
	{"image": preload("res://Assets/Flags/Nigeria.png"), "answers": ["Nigeria", "Rwanda", "Brunei"], "correct": 0},
	{"image": preload("res://Assets/Flags/Niue.png"), "answers": ["Russia", "Zambia", "Niue"], "correct": 2},
	{"image": preload("res://Assets/Flags/North Korea.png"), "answers": ["North Korea", "Togo", "Mongolia"], "correct": 0},
	{"image": preload("res://Assets/Flags/North Macedonia.png"), "answers": ["Romania", "North Macedonia", "Montenegro"], "correct": 1},
	{"image": preload("res://Assets/Flags/Northern Ireland.png"), "answers": ["Northern Ireland", "Ireland", "Wales"], "correct": 0},
	{"image": preload("res://Assets/Flags/Northern Mariana.png"), "answers": ["Sao Tome and Principe", "Northern Mariana", "Trinidad and Tobago"], "correct": 1},
	{"image": preload("res://Assets/Flags/Norway.png"), "answers": ["Norway", "Switzerland", "Denmark"], "correct": 0},
	{"image": preload("res://Assets/Flags/Oman.png"), "answers": ["Turkey", "Zambia", "Oman"], "correct": 2},
	{"image": preload("res://Assets/Flags/Pakistan.png"), "answers": ["Estwatini", "Pakistan", "Tonga"], "correct": 1},
	{"image": preload("res://Assets/Flags/Palau.png"), "answers": ["Palau", "Kazakhstan", "Somalia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Palestine.png"), "answers": ["Seychelles", "Palestine", "Namibia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Panama.png"), "answers": ["Guatemala", "Nauru", "Panama"], "correct": 2},
	{"image": preload("res://Assets/Flags/Papua New Guinea.png"), "answers": ["Guinea-Bissau", "Papua New Guinea", "Saint Lucia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Paraguay.png"), "answers": ["Paraguay", "Libya", "Malawi"], "correct": 0},
	{"image": preload("res://Assets/Flags/Peru.png"), "answers": ["Oman", "Peru", "Laos"], "correct": 1},
	{"image": preload("res://Assets/Flags/Philippines.png"), "answers": ["Philippines", "Myanmar", "Indonesia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Poland.png"), "answers": ["Slovenia", "Albania", "Poland"], "correct": 2},
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
	stats_label.visible = true
	_start_new_round()
	timer.start()

# Quit the game
func _on_quit_button_pressed():
	get_tree().quit()

