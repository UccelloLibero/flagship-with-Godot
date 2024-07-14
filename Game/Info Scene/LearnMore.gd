extends Control

# Preload scenes and assets
var country_data = [
	{"name": "Afghanistan", "image": preload("res://Assets/Flags/Afghanistan.png")},
	{"name": "Albania", "image": preload("res://Assets/Flags/Albania.png")},
	{"name": "Algeria", "image": preload("res://Assets/Flags/Algeria.png")},
	{"name": "Andora", "image": preload("res://Assets/Flags/Andora.png")},
	{"name": "Angola", "image": preload("res://Assets/Flags/Angola.png")},
	{"name": "Antigua and Barbuda", "image": preload("res://Assets/Flags/Antigua and Barbuda.png")},
	{"name": "Argentina", "image": preload("res://Assets/Flags/Argentina.png")},
	{"name": "Armenia", "image": preload("res://Assets/Flags/Armenia.png")},
	{"name": "Aruba", "image": preload("res://Assets/Flags/Aruba.png")},
	{"name": "Australia", "image": preload("res://Assets/Flags/Australia.png")},
	{"name": "Austria", "image": preload("res://Assets/Flags/Austria.png")},
	{"name": "Azerbaijan", "image": preload("res://Assets/Flags/Azerbaijan.png")},
	{"name": "Bahamas", "image": preload("res://Assets/Flags/Bahamas.png")},
	{"name": "Bahrain", "image": preload("res://Assets/Flags/Bahrain.png")},
	{"name": "Bangladesh", "image": preload("res://Assets/Flags/Bangladesh.png")},
	{"name": "Barbados", "image": preload("res://Assets/Flags/Barbados.png")},
	{"name": "Belarus", "image": preload("res://Assets/Flags/Belarus.png")},
	{"name": "Belgium", "image": preload("res://Assets/Flags/Belgium.png")},
	{"name": "Belize", "image": preload("res://Assets/Flags/Belize.png")},
	{"name": "Benin", "image": preload("res://Assets/Flags/Benin.png")},
	{"name": "Bhutan", "image": preload("res://Assets/Flags/Bhutan.png")},
	{"name": "Bolivia", "image": preload("res://Assets/Flags/Bolivia.png")},
	{"name": "Bonaire", "image": preload("res://Assets/Flags/Bonaire.png")},
	{"name": "Bosnia and Herzegovina", "image": preload("res://Assets/Flags/Bosnia and Herzegovina.png")},
	{"name": "Botswana", "image": preload("res://Assets/Flags/Botswana.png")},
	{"name": "Brazil", "image": preload("res://Assets/Flags/Brazil.png")},
	{"name": "Brunei", "image": preload("res://Assets/Flags/Brunei.png")},
	{"name": "Bulgaria", "image": preload("res://Assets/Flags/Bulgaria.png")},
	{"name": "Burkina Faso", "image": preload("res://Assets/Flags/Burkina Faso.png")},
	{"name": "Burundi", "image": preload("res://Assets/Flags/Burundi.png")},
	{"name": "Cabo Verde", "image": preload("res://Assets/Flags/Cabo Verde.png")},
	{"name": "Cambodia", "image": preload("res://Assets/Flags/Cambodia.png")},
	{"name": "Cameroon", "image": preload("res://Assets/Flags/Cameroon.png")},
	{"name": "Canada", "image": preload("res://Assets/Flags/Canada.png")},
	{"name": "Central African Republic", "image": preload("res://Assets/Flags/Central African Republic.png")},
	{"name": "Chad", "image": preload("res://Assets/Flags/Chad.png")},
	{"name": "Chile", "image": preload("res://Assets/Flags/Chile.png")},
	{"name": "China", "image": preload("res://Assets/Flags/China.png")},
	{"name": "Colombia", "image": preload("res://Assets/Flags/Colombia.png")},
	{"name": "Comoros", "image": preload("res://Assets/Flags/Comoros.png")},
	{"name": "Costa Rica", "image": preload("res://Assets/Flags/Costa Rica.png")},
	{"name": "Croatia", "image": preload("res://Assets/Flags/Croatia.png")},
	{"name": "Cuba", "image": preload("res://Assets/Flags/Cuba.png")},
	{"name": "Curaçao", "image": preload("res://Assets/Flags/Curaçao.png")},
	{"name": "Cyprus", "image": preload("res://Assets/Flags/Cyprus.png")},
	{"name": "Czech Republic", "image": preload("res://Assets/Flags/Czech Republic.png")},
	{"name": "Côte d'Ivoire", "image": preload("res://Assets/Flags/Côte d'Ivoire.png")},
	{"name": "Democratic Republic of the Congo", "image": preload("res://Assets/Flags/Democratic Republic of the Congo.png")},
	{"name": "Denmark", "image": preload("res://Assets/Flags/Denmark.png")},
	{"name": "Djibouti", "image": preload("res://Assets/Flags/Djibouti.png")},
	{"name": "Dominica", "image": preload("res://Assets/Flags/Dominica.png")},
	{"name": "Dominican Republic", "image": preload("res://Assets/Flags/Dominican Republic.png")},
	{"name": "East Timor", "image": preload("res://Assets/Flags/East Timor.png")},
	{"name": "Ecuador", "image": preload("res://Assets/Flags/Ecuador.png")},
	{"name": "Egypt", "image": preload("res://Assets/Flags/Egypt.png")},
	{"name": "El Salvador", "image": preload("res://Assets/Flags/El Salvador.png")},
	{"name": "Equatorial Guinea", "image": preload("res://Assets/Flags/Equatorial Guinea.png")},
	{"name": "Eritrea", "image": preload("res://Assets/Flags/Eritrea.png")},
	{"name": "Estonia", "image": preload("res://Assets/Flags/Estonia.png")},
	{"name": "Eswatini", "image": preload("res://Assets/Flags/Eswatini.png")},
	{"name": "Ethiopia", "image": preload("res://Assets/Flags/Ethiopia.png")},
	{"name": "Faroe Islands", "image": preload("res://Assets/Flags/Faroe Islands.png")},
	{"name": "Federated State of Micronesia", "image": preload("res://Assets/Flags/Federated State of Micronesia.png")},
	{"name": "Fiji", "image": preload("res://Assets/Flags/Fiji.png")},
	{"name": "Finland", "image": preload("res://Assets/Flags/Finland.png")},
	{"name": "France", "image": preload("res://Assets/Flags/France.png")},
	{"name": "Gabon", "image": preload("res://Assets/Flags/Gabon.png")},
	{"name": "Georgia", "image": preload("res://Assets/Flags/Georgia.png")},
	{"name": "Germany", "image": preload("res://Assets/Flags/Germany.png")},
	{"name": "Ghana", "image": preload("res://Assets/Flags/Ghana.png")},
	{"name": "Greece", "image": preload("res://Assets/Flags/Greece.png")},
	{"name": "Greenland", "image": preload("res://Assets/Flags/Greenland.png")},
	{"name": "Grenada", "image": preload("res://Assets/Flags/Grenada.png")},
	{"name": "Guadeloupe", "image": preload("res://Assets/Flags/Guadeloupe.png")},
	{"name": "Guam", "image": preload("res://Assets/Flags/Guam.png")},
	{"name": "Guatemala", "image": preload("res://Assets/Flags/Guatemala.png")},
	{"name": "Guinea-Bissau", "image": preload("res://Assets/Flags/Guinea-Bissau.png")},
	{"name": "Guinea", "image": preload("res://Assets/Flags/Guinea.png")},
	{"name": "Guyana", "image": preload("res://Assets/Flags/Guyana.png")},
	{"name": "Haiti", "image": preload("res://Assets/Flags/Haiti.png")},
	{"name": "Honduras", "image": preload("res://Assets/Flags/Honduras.png")},
	{"name": "Hungary", "image": preload("res://Assets/Flags/Hungary.png")},
	{"name": "Iceland", "image": preload("res://Assets/Flags/Iceland.png")},
	{"name": "India", "image": preload("res://Assets/Flags/India.png")},
	{"name": "Indonesia", "image": preload("res://Assets/Flags/Indonesia.png")},
	{"name": "Iran", "image": preload("res://Assets/Flags/Iran.png")},
	{"name": "Iraq", "image": preload("res://Assets/Flags/Iraq.png")},
	{"name": "Ireland", "image": preload("res://Assets/Flags/Ireland.png")},
	{"name": "Israel", "image": preload("res://Assets/Flags/Israel.png")},
	{"name": "Italy", "image": preload("res://Assets/Flags/Italy.png")},
	{"name": "Jamaica", "image": preload("res://Assets/Flags/Jamaica.png")},
	{"name": "Japan", "image": preload("res://Assets/Flags/Japan.png")},
	{"name": "Jordan", "image": preload("res://Assets/Flags/Jordan.png")},
	{"name": "Kazakhstan", "image": preload("res://Assets/Flags/Kazakhstan.png")},
	{"name": "Kenya", "image": preload("res://Assets/Flags/Kenya.png")},
	{"name": "Kiribati", "image": preload("res://Assets/Flags/Kiribati.png")},
	{"name": "Kosovo", "image": preload("res://Assets/Flags/Kosovo.png")},
	{"name": "Kuwait", "image": preload("res://Assets/Flags/Kuwait.png")},
	{"name": "Kyrgyzstan", "image": preload("res://Assets/Flags/Kyrgyzstan.png")},
	{"name": "Laos", "image": preload("res://Assets/Flags/Laos.png")},
	{"name": "Latvia", "image": preload("res://Assets/Flags/Latvia.png")},
	{"name": "Lebanon", "image": preload("res://Assets/Flags/Lebanon.png")},
	{"name": "Lesotho", "image": preload("res://Assets/Flags/Lesotho.png")},
	{"name": "Liberia", "image": preload("res://Assets/Flags/Liberia.png")},
	{"name": "Libya", "image": preload("res://Assets/Flags/Libya.png")},
	{"name": "Liechtenstein", "image": preload("res://Assets/Flags/Liechtenstein.png")},
	{"name": "Lithuania", "image": preload("res://Assets/Flags/Lithuania.png")},
	{"name": "Luxembourg", "image": preload("res://Assets/Flags/Luxembourg.png")},
	{"name": "Macao", "image": preload("res://Assets/Flags/Macao.png")},
	{"name": "Madagascar", "image": preload("res://Assets/Flags/Madagascar.png")},
	{"name": "Malawi", "image": preload("res://Assets/Flags/Malawi.png")},
	{"name": "Malaysia", "image": preload("res://Assets/Flags/Malaysia.png")},
	{"name": "Maldives", "image": preload("res://Assets/Flags/Maldives.png")},
	{"name": "Mali", "image": preload("res://Assets/Flags/Mali.png")},
	{"name": "Malta", "image": preload("res://Assets/Flags/Malta.png")},
	{"name": "Marshall Islands", "image": preload("res://Assets/Flags/Marshall Islands.png")},
	{"name": "Mauritania", "image": preload("res://Assets/Flags/Mauritania.png")},
	{"name": "Mauritius", "image": preload("res://Assets/Flags/Mauritius.png")},
	{"name": "Mexico", "image": preload("res://Assets/Flags/Mexico.png")},
	{"name": "Moldova", "image": preload("res://Assets/Flags/Moldova.png")},
	{"name": "Monaco", "image": preload("res://Assets/Flags/Monaco.png")},
	{"name": "Mongolia", "image": preload("res://Assets/Flags/Mongolia.png")},
	{"name": "Montenegro", "image": preload("res://Assets/Flags/Montenegro.png")},
	{"name": "Morocco", "image": preload("res://Assets/Flags/Morocco.png")},
	{"name": "Mozambique", "image": preload("res://Assets/Flags/Mozambique.png")},
	{"name": "Myanmar", "image": preload("res://Assets/Flags/Myanmar.png")},
	{"name": "Namibia", "image": preload("res://Assets/Flags/Namibia.png")},
	{"name": "Nauru", "image": preload("res://Assets/Flags/Nauru.png")},
	{"name": "Nepal", "image": preload("res://Assets/Flags/Nepal.png")},
	{"name": "Netherlands", "image": preload("res://Assets/Flags/Netherlands.png")},
	{"name": "New Caledonia", "image": preload("res://Assets/Flags/New Caledonia.png")},
	{"name": "New Zealand", "image": preload("res://Assets/Flags/New Zealand.png")},
	{"name": "Nicaragua", "image": preload("res://Assets/Flags/Nicaragua.png")},
	{"name": "Niger", "image": preload("res://Assets/Flags/Niger.png")},
	{"name": "Nigeria", "image": preload("res://Assets/Flags/Nigeria.png")},
	{"name": "Niue", "image": preload("res://Assets/Flags/Niue.png")},
	{"name": "North Korea", "image": preload("res://Assets/Flags/North Korea.png")},
	{"name": "North Macedonia", "image": preload("res://Assets/Flags/North Macedonia.png")},
	{"name": "Northern Ireland", "image": preload("res://Assets/Flags/Northern Ireland.png")},
	{"name": "Northern Mariana", "image": preload("res://Assets/Flags/Northern Mariana.png")},
	{"name": "Norway", "image": preload("res://Assets/Flags/Norway.png")},
	{"name": "Oman", "image": preload("res://Assets/Flags/Oman.png")},
	{"name": "Pakistan", "image": preload("res://Assets/Flags/Pakistan.png")},
	{"name": "Palau", "image": preload("res://Assets/Flags/Palau.png")},
	{"name": "Palestine", "image": preload("res://Assets/Flags/Palestine.png")},
	{"name": "Panama", "image": preload("res://Assets/Flags/Panama.png")},
	{"name": "Papau New Guinea", "image": preload("res://Assets/Flags/Papua New Guinea.png")},
	{"name": "Paraguay", "image": preload("res://Assets/Flags/Paraguay.png")},
	{"name": "Peru", "image": preload("res://Assets/Flags/Peru.png")},
	{"name": "Philippines", "image": preload("res://Assets/Flags/Philippines.png")},
	{"name": "Poland", "image": preload("res://Assets/Flags/Poland.png")},
	{"name": "Portugal", "image": preload("res://Assets/Flags/Portugal.png")},
	#{"name": "Qatar", "image": preload("res://Assets/Flags/Qatar.png")},
	{"name": "Republic of the Congo", "image": preload("res://Assets/Flags/Republic of the Congo.png")},
	{"name": "Romania", "image": preload("res://Assets/Flags/Romania.png")},
	{"name": "Russia", "image": preload("res://Assets/Flags/Russia.png")},
	{"name": "Rwanda", "image": preload("res://Assets/Flags/Rwanda.png")},
	{"name": "Saba", "image": preload("res://Assets/Flags/Saba.png")},
	{"name": "Saint Kitts and Nevis", "image": preload("res://Assets/Flags/Saint Kitts and Nevis.png")},
	{"name": "Saint Lucia", "image": preload("res://Assets/Flags/Saint Lucia.png")},
	{"name": "Saint Vincent and the Grenadines", "image": preload("res://Assets/Flags/Saint Vincent and the Grenadines.png")},
	{"name": "Samoa", "image": preload("res://Assets/Flags/Samoa.png")},
	{"name": "San Marino", "image": preload("res://Assets/Flags/San Marino.png")},
	{"name": "Saudi Arabia", "image": preload("res://Assets/Flags/Saudi Arabia.png")},
	{"name": "Scotland", "image": preload("res://Assets/Flags/Scotland.png")},
	{"name": "Senegal", "image": preload("res://Assets/Flags/Senegal.png")},
	{"name": "Serbia", "image": preload("res://Assets/Flags/Serbia.png")},
	{"name": "Seychelles", "image": preload("res://Assets/Flags/Seychelles.png")},
	{"name": "Sierra Leone", "image": preload("res://Assets/Flags/Sierra Leone.png")},
	{"name": "Singapore", "image": preload("res://Assets/Flags/Singapore.png")},
	{"name": "Slovakia", "image": preload("res://Assets/Flags/Slovakia.png")},
	{"name": "Slovenia", "image": preload("res://Assets/Flags/Slovenia.png")},
	{"name": "Solomon Islands", "image": preload("res://Assets/Flags/Solomon Islands.png")},
	{"name": "Somalia", "image": preload("res://Assets/Flags/Somalia.png")},
	{"name": "South Africa", "image": preload("res://Assets/Flags/South Africa.png")},
	{"name": "South Korea", "image": preload("res://Assets/Flags/South Korea.png")},
	{"name": "South Sudan", "image": preload("res://Assets/Flags/South Sudan.png")},
	{"name": "Spain", "image": preload("res://Assets/Flags/Spain.png")},
	{"name": "Sri Lanka", "image": preload("res://Assets/Flags/Sri Lanka.png")},
	{"name": "St. Eustatius", "image": preload("res://Assets/Flags/St. Eustatius.png")},
	{"name": "St. Martin", "image": preload("res://Assets/Flags/St. Martin.png")},
	{"name": "Sudan", "image": preload("res://Assets/Flags/Sudan.png")},
	{"name": "Suriname", "image": preload("res://Assets/Flags/Suriname.png")},
	{"name": "Sweden", "image": preload("res://Assets/Flags/Sweden.png")},
	{"name": "Switzerland", "image": preload("res://Assets/Flags/Switzerland.png")},
	{"name": "Syria", "image": preload("res://Assets/Flags/Syria.png")},
	{"name": "São Tomé and Príncipe", "image": preload("res://Assets/Flags/São Tomé and Príncipe.png")},
	{"name": "Taiwan", "image": preload("res://Assets/Flags/Taiwan.png")},
	{"name": "Tajikistan", "image": preload("res://Assets/Flags/Tajikistan.png")},
	{"name": "Tanzania", "image": preload("res://Assets/Flags/Tanzania.png")},
	{"name": "Thailand", "image": preload("res://Assets/Flags/Thailand.png")},
	{"name": "The Bahamas", "image": preload("res://Assets/Flags/The Bahamas.png")},
	{"name": "The Gambia", "image": preload("res://Assets/Flags/The Gambia.png")},
	{"name": "Togo", "image": preload("res://Assets/Flags/Togo.png")},
	{"name": "Tonga", "image": preload("res://Assets/Flags/Tonga.png")},
	{"name": "Trinidad and Tobago", "image": preload("res://Assets/Flags/Trinidad and Tobago.png")},
	{"name": "Tunisia", "image": preload("res://Assets/Flags/Tunisia.png")},
	{"name": "Turkey", "image": preload("res://Assets/Flags/Turkey.png")},
	{"name": "Turkmenistan", "image": preload("res://Assets/Flags/Turkmenistan.png")},
	{"name": "Tuvalu", "image": preload("res://Assets/Flags/Tuvalu.png")},
	{"name": "Uganda", "image": preload("res://Assets/Flags/Uganda.png")},
	{"name": "Ukraine", "image": preload("res://Assets/Flags/Ukraine.png")},
	{"name": "United Arab Emirates", "image": preload("res://Assets/Flags/United Arab Emirates.png")},
	{"name": "United Kindgdom", "image": preload("res://Assets/Flags/United Kingdom.png")},
	{"name": "United States of America", "image": preload("res://Assets/Flags/United States of America.png")},
	{"name": "Uruguay", "image": preload("res://Assets/Flags/Uruguay.png")},
	{"name": "Uzbekistan", "image": preload("res://Assets/Flags/Uzbekistan.png")},
	{"name": "Vanuatu", "image": preload("res://Assets/Flags/Vanuatu.png")},
	{"name": "Vatican City", "image": preload("res://Assets/Flags/Vatican City.png")},
	{"name": "Venezuela", "image": preload("res://Assets/Flags/Venezuela.png")},
	{"name": "Vietnam", "image": preload("res://Assets/Flags/Vietnam.png")},
	{"name": "Wales", "image": preload("res://Assets/Flags/Wales.png")},
	{"name": "Yemen", "image": preload("res://Assets/Flags/Yemen.png")},
	{"name": "Zambia", "image": preload("res://Assets/Flags/Zambia.png")},
	{"name": "Zimbabwe", "image": preload("res://Assets/Flags/Zimbabwe.png")}
]

@onready var country_list_container = $Control/VBoxContainer/ScrollContainer/VBoxContainer
@onready var play_button = $VBoxContainer/HBoxContainer/PlayButton
@onready var main_button = $VBoxContainer/HBoxContainer/MainButton
@onready var quit_button = $VBoxContainer/HBoxContainer/QuitButton
@onready var thank_you_label = $ThankYouLabel

var custom_theme

func _ready():
	#thank_you_label.visible = false
	custom_theme = preload("res://Game/new_system_font.tres")
	populate_country_list()

func populate_country_list():
	# Define the font color
	var font_color =  Color(0.094, 0.094, 0.094)  # Color with RGB values for hex #181818
	
	for country in country_data:
		var country_entry = HBoxContainer.new()
		country_entry.custom_minimum_size = Vector2(0, 80)  # Set minimum height for each entry

		var image_container = PanelContainer.new()
		image_container.custom_minimum_size = Vector2(200, 100)  # Set the desired size

		# Handle country flag image display
		var country_image = TextureRect.new()
		country_image.texture = country["image"]
		country_image.expand_mode = TextureRect.EXPAND_FIT_WIDTH_PROPORTIONAL
		image_container.add_child(country_image)
		
		# Handle country name display 
		var country_name = Label.new()
		country_name.text = country["name"]
		country_name.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
		country_name.custom_minimum_size = Vector2(200, 50)  # Ensure the label respects the size
		
		 # Apply the font color to the label
		country_name.add_theme_color_override("font_color", font_color)
		# Apply the custom theme to the label
		country_name.theme = custom_theme

		country_entry.add_child(image_container)
		country_entry.add_child(country_name)
		country_list_container.add_child(country_entry)

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Game/Game Scene/control.tscn")
	#var game_scene = preload("res://Game/Game Scene/control.tscn").instantiate()
	#get_tree().change_scene_to(game_scene)

func _on_main_button_pressed():
	var intro_scene = preload("res://Game/Intro Scene/IntroScene.tscn").instantiate()
	get_tree().change_scene_to(intro_scene)

func _on_quit_button_pressed():
	get_tree().quit()
	##thank_you_label.visible = true
	#await get_tree().create_timer(2.0).timeout
	#get_tree().quit()
