extends Control

# Declare variables
var flags = [
	{"image": preload("res://Assets/Flags/Afghanistan.png"), "answers": ["Afghanistan", "Uganda", "Baharin"], "correct": 0},
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
	{"image": preload("res://Assets/Flags/Cyprus.png"), "answers": ["Micronesia", "Greece", "Cyprus"], "correct": 2},
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
	{"image": preload("res://Assets/Flags/Portugal.png"), "answers": ["Portugal", "Barbados", "Myanmar"], "correct": 0},
	{"image": preload("res://Assets/Flags/Qatar.png"), "answers": ["Nepal", "Qatar", "Portugal"], "correct": 1},
	{"image": preload("res://Assets/Flags/Republic of the Congo.png"), "answers": ["Saint Kitts and Nevis", "Republic of the Congo", "Saint Vincent and the Grenadines"], "correct": 1},
	{"image": preload("res://Assets/Flags/Romania.png"), "answers": ["Romania", "Albania", "Slovenia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Russia.png"), "answers": ["Paraguay", "Slovakia", "Russia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Rwanda.png"), "answers": ["Palau", "Rwanda", "Tanzania"], "correct": 1},
	{"image": preload("res://Assets/Flags/Saba.png"), "answers": ["Saba", "Tuvalu", "Laos"], "correct": 0},
	{"image": preload("res://Assets/Flags/Saint Kitts and Nevis.png"), "answers": ["Saint Kitts and Nevis", "Sao Tome and Principe", "Solomon Islands"], "correct": 0},
	{"image": preload("res://Assets/Flags/Saint Lucia.png"), "answers": ["Sierra Leone", "Saint Lucia", "Sri Lanka"], "correct": 1},
	{"image": preload("res://Assets/Flags/Saint Vincent and the Grenadines.png"), "answers": ["Republic of the Congo", "Saint Vincent and the Grenadines", "Saint Kitts and Nevis"], "correct": 1},
	{"image": preload("res://Assets/Flags/Samoa.png"), "answers": ["Samoa", "Togo", "Gabon"], "correct": 0},
	{"image": preload("res://Assets/Flags/San Marino.png"), "answers": ["Germany", "San Marino", "Malta"], "correct": 1},
	{"image": preload("res://Assets/Flags/Saudi Arabia.png"), "answers": ["Mauritania", "Lesotho", "Saudi Arabia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Scotland.png"), "answers": ["Monaco", "Scotland", "Latvia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Senegal.png"), "answers": ["Senegal", "Andora", "Kyrgyzstan"], "correct": 0},
	{"image": preload("res://Assets/Flags/Serbia.png"), "answers": ["Serbia", "Mali", "Russia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Seychelles.png"), "answers": ["Liechtenstein", "Zimbabwe", "Seychelles"], "correct": 2},
	{"image": preload("res://Assets/Flags/Sierra Leone.png"), "answers": ["Sri Lanka", "Siera Leone", "Saint Lucia"], "correct": 1},
	{"image": preload("res://Assets/Flags/Singapore.png"), "answers": ["Singapore", "Uzbekistan", "Bulgaria"], "correct": 0},
	{"image": preload("res://Assets/Flags/Slovakia.png"), "answers": ["Slovenia", "Slovakia", "Albania"], "correct": 1},
	{"image": preload("res://Assets/Flags/Slovenia.png"), "answers": ["Slovenia", "Montenegro", "Romania"], "correct": 0},
	{"image": preload("res://Assets/Flags/Solomon Islands.png"), "answers": ["Costa Rica", "Burkina Fase", "Solomon Islands"], "correct": 2},
	{"image": preload("res://Assets/Flags/Somalia.png"), "answers": ["Colombia", "Somalia", "Ethiopia"], "correct": 1},
	{"image": preload("res://Assets/Flags/South Africa.png"), "answers": ["South Africa", "South Korea", "South Sudan"], "correct": 0},
	{"image": preload("res://Assets/Flags/South Korea.png"), "answers": ["Myanmar", "Japan", "South Korea"], "correct": 2},
	{"image": preload("res://Assets/Flags/South Sudan.png"), "answers": ["South Korea", "South Sudan", "South Africa"], "correct": 1},
	{"image": preload("res://Assets/Flags/Spain.png"), "answers": ["Spain", "Portugal", "France"], "correct": 0},
	{"image": preload("res://Assets/Flags/Sri Lanka.png"), "answers": ["Sri Lanka", "Sudan", "Suriname"], "correct": 0},
	{"image": preload("res://Assets/Flags/St. Eustatius.png"), "answers": ["Yemen", "St. Eustatius", "Tanzania"], "correct": 1},
	{"image": preload("res://Assets/Flags/St. Martin.png"), "answers": ["Palestine", "Oman", "St. Martin"], "correct": 2},
	{"image": preload("res://Assets/Flags/Sudan.png"), "answers": ["Syria", "Sudan", "Suriname"], "correct": 1},
	{"image": preload("res://Assets/Flags/Suriname.png"), "answers": ["Spain", "Suriname", "Senegal"], "correct": 1},
	{"image": preload("res://Assets/Flags/Sweden.png"), "answers": ["Sweden", "Denmark", "Finland"], "correct": 0},
	{"image": preload("res://Assets/Flags/Switzerland.png"), "answers": ["Austria", "Switzerland", "Poland"], "correct": 1},
	{"image": preload("res://Assets/Flags/Syria.png"), "answers": ["Rwanda", "Togo", "Syria"], "correct": 2},
	{"image": preload("res://Assets/Flags/São Tomé and Príncipe.png"), "answers": ["Trinidad and Tobago", "São Tomé and Príncipe", "United Arab Emirates"], "correct": 1},
	{"image": preload("res://Assets/Flags/Taiwan.png"), "answers": ["Cambodia", "Viet Nam", "Taiwan"], "correct": 2},
	{"image": preload("res://Assets/Flags/Tajikistan.png"), "answers": ["Tajikistan", "Tonga", "Tunisia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Tanzania.png"), "answers": ["New Zealand", "Australia", "Tanzania"], "correct": 2},
	{"image": preload("res://Assets/Flags/Thailand.png"), "answers": ["Thailand", "Tuvalu", "Turkey"], "correct": 0},
	{"image": preload("res://Assets/Flags/The Bahamas.png"), "answers": ["Costa Rica", "The Bahamas", "Barbados"], "correct": 1},
	{"image": preload("res://Assets/Flags/The Gambia.png"), "answers": ["The Gambia", "Kiribati", "Faroe Islands"], "correct": 0},
	{"image": preload("res://Assets/Flags/Togo.png"), "answers": ["Niue", "Togo", "Laos"], "correct": 1},
	{"image": preload("res://Assets/Flags/Tonga.png"), "answers": ["Qatar", "Samoa", "Tonga"], "correct": 2},
	{"image": preload("res://Assets/Flags/Trinidad and Tobago.png"), "answers": ["Trinidad and Tobago", "Saint Kitts and Nevis", "Papua New Guinea"], "correct": 0},
	{"image": preload("res://Assets/Flags/Tunisia.png"), "answers": ["Morocco", "Algeria", "Tunisia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Turkey.png"), "answers": ["Turkey", "Greece", "Georgia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Turkmenistan.png"), "answers": ["Madagascar", "Turkmenistan", "Uzbekistan"], "correct": 1},
	{"image": preload("res://Assets/Flags/Tuvalu.png"), "answers": ["Tuvalu", "Fiji", "Samoa"], "correct": 0},
	{"image": preload("res://Assets/Flags/Uganda.png"), "answers": ["Tanzania", "Uganda", "Malawi"], "correct": 1},
	{"image": preload("res://Assets/Flags/Ukraine.png"), "answers": ["Ukraine", "Poland", "Moldova"], "correct": 0},
	{"image": preload("res://Assets/Flags/United Arab Emirates.png"), "answers": ["Kuwait", "United Arab Emirates", "Saudi Arabia"], "correct": 1},
	{"image": preload("res://Assets/Flags/United Kingdom.png"), "answers": ["United Kingdom", "Iceland", "Philippines"], "correct": 0},
	{"image": preload("res://Assets/Flags/United States of America.png"), "answers": ["Bosnia and Herzegovia", "United States of America", "São Tomé and Príncipe"], "correct": 1},
	{"image": preload("res://Assets/Flags/Uruguay.png"), "answers": ["Ukraine", "Uganda", "Uruguay"], "correct": 2},
	{"image": preload("res://Assets/Flags/Uzbekistan.png"), "answers": ["Uzbekistan", "Somalia", "Ethiopia"], "correct": 0},
	{"image": preload("res://Assets/Flags/Vanuatu.png"), "answers": ["Venezuela", "Viet Nam", "Vanuatu"], "correct": 2},
	{"image": preload("res://Assets/Flags/Vatican City.png"), "answers": ["Italy", "Vatican City", "Cypres"], "correct": 1},
	{"image": preload("res://Assets/Flags/Venezuela.png"), "answers": ["Colombia", "Venezuela", "Guyana"], "correct": 1},
	{"image": preload("res://Assets/Flags/Vietnam.png"), "answers": ["Viet Nam", "Laos", "Thailand"], "correct": 0},
	{"image": preload("res://Assets/Flags/Wales.png"), "answers": ["Ireland", "Wales", "Scotland"], "correct": 1},
	{"image": preload("res://Assets/Flags/Yemen.png"), "answers": ["Estwatini", "Peru", "Yemen"], "correct": 2},
	{"image": preload("res://Assets/Flags/Zambia.png"), "answers": ["Angola", "Mozambique", "Zambia"], "correct": 2},
	{"image": preload("res://Assets/Flags/Zimbabwe.png"), "answers": ["Zimbabwe", "Botswana", "Namibia"], "correct": 0}
]

var current_flag = {}
var score = 0
var wrong_score = 0
var time_left = 60
#var correct_answer_given = false
var first_try = true

# Preload the icons
var icon_green = preload("res://Assets/Icons/timer_green.svg")
var icon_orange = preload("res://Assets/Icons/timer_orange.svg")
var icon_red = preload("res://Assets/Icons/timer_red.svg")


# Nodes
@onready var ui = $Screen
@onready var time_label = $Screen/Panel/VBoxContainer3/VBoxContainer/HBoxContainer/Panel/TimerLabel
@onready var timer_icon = $Screen/Panel/VBoxContainer3/VBoxContainer/HBoxContainer/Panel/TimerIcon
@onready var flag_image = $Screen/Panel/VBoxContainer3/Panel/TextureRect
@onready var button1 = $Screen/Panel/VBoxContainer3/GuessButtonsContainer/Button
@onready var button2 = $Screen/Panel/VBoxContainer3/GuessButtonsContainer/Button2
@onready var button3 = $Screen/Panel/VBoxContainer3/GuessButtonsContainer/Button3
@onready var correct_label = $Screen/Panel/VBoxContainer3/VBoxContainer/HBoxContainer/Panel2/CorrectLabel
@onready var wrong_label = $Screen/Panel/VBoxContainer3/VBoxContainer/HBoxContainer/Panel2/WrongLabel
@onready var restart_button = $Screen/Panel/VBoxContainer3/HBoxContainer2/RestartButton
@onready var quit_button = $Screen/Panel/VBoxContainer3/HBoxContainer2/QuitButton
@onready var play_again_yes = $Screen/Panel/VBoxContainer3/HBoxContainer3/PlayAgainYes
@onready var play_again_no = $Screen/Panel/VBoxContainer3/HBoxContainer3/PlayAgainNo
@onready var thank_you = $Screen/Panel/VBoxContainer3/ThankYouLabel
@onready var stats_label = $Screen/Panel/VBoxContainer3/StatsLabel
@onready var timer_panel = $Screen/Panel/VBoxContainer3/VBoxContainer/HBoxContainer/Panel
@onready var answer_panel = $Screen/Panel/VBoxContainer3/VBoxContainer/HBoxContainer/Panel2

func _ready():
	update_timer()
	set_process(true)
	correct_label.visible = true
	wrong_label.visible = true
	_start_new_round()

func _process(delta):
	if time_left > 0:
		time_left -= delta
		update_timer()
	if time_left <= 0:
		_end_game()

func update_timer():
	time_label.text = " " + str(int(time_left))
	if time_left > 30:
		time_label.add_theme_color_override("font_color", Color8(52, 168, 83)) # Green hex #34A853
		timer_icon.texture = icon_green
	elif time_left > 10:
		time_label.add_theme_color_override("font_color", Color(1, 0.5, 0)) # Orange
		timer_icon.texture = icon_orange
	else:
		time_label.add_theme_color_override("font_color", Color(1, 0, 0)) # Red
		timer_icon.texture = icon_red

# Function that randomly displays flags with answers from the list
func _start_new_round():
	reset_buttons()
	current_flag = flags[randi() % flags.size()]
	flag_image.texture = current_flag["image"]
	button1.text = current_flag["answers"][0]
	button2.text = current_flag["answers"][1]
	button3.text = current_flag["answers"][2]
	first_try = true
	correct_label.text = " " + str(score)
	wrong_label.text = " " + str(wrong_score)

func reset_buttons():
	var default_modulate = Color(1, 1, 1) # white
	var default_font_color = Color8(24, 24, 24) # dark gray

	# Reset modulate color
	button1.modulate = default_modulate
	button2.modulate = default_modulate
	button3.modulate = default_modulate

	# Reset font color
	button1.add_theme_color_override("font_color", default_font_color)
	button2.add_theme_color_override("font_color", default_font_color)
	button3.add_theme_color_override("font_color", default_font_color)

	# Reset pressed state
	button1.set_pressed(false)
	button2.set_pressed(false)
	button3.set_pressed(false)

# Buttons 
func _on_button_pressed():
	_check_answer(0, button1)

func _on_button_2_pressed():
	_check_answer(1, button2)

func _on_button_3_pressed():
	_check_answer(2, button3)
	
# Function that checks whether the selected answer is correct and updates scores accordingly
func _check_answer(answer_index, button):
	if answer_index == current_flag["correct"]:
		if first_try:
			score += 1
		button.modulate = Color(0, 1, 0) # Green
		button.add_theme_color_override("font_color", Color8(24, 24, 24)) # Hex #181818 font
		await _wait_and_start_new_round()
	else:
		if first_try:
			wrong_score += 1
		first_try = false
		button.modulate = Color(1, 0, 0) # Red
		button.add_theme_color_override("font_color", Color8(24, 24, 24)) # Hex #181818 font

# Coroutine to wait and start a new round
func _wait_and_start_new_round():
	await get_tree().create_timer(1.0).timeout
	_start_new_round()

# End game function that displays all stats and supports play again logic
func _end_game():
	hide_game_elements()
	show_play_again_scene()

func hide_game_elements():
	$Screen.hide()

func _on_restart_button_pressed():
	reset_game()

# Quit the game
func _on_quit_button_pressed():
	await get_tree().create_timer(2.0).timeout
	get_tree().quit()

# Function to show play again scene
func show_play_again_scene():
	var play_again_scene = preload("res://Game/Game Scene/play_again.tscn").instantiate()
	add_child(play_again_scene)
	play_again_scene.get_node("Control/Panel/VBoxContainer/Panel/CorrectAnswers").text = "Correct: " + str(score) + "."
	play_again_scene.get_node("Control/Panel/VBoxContainer/Panel/WrongAnswers").text = "Wrong: " + str(wrong_score) + "."

func reset_game():
	score = 0
	wrong_score = 0
	time_left = 60
	show_game_elements()
	_start_new_round()
	
func show_game_elements():
	$Screen.show()

# Play again YES
func _on_play_again_yes_pressed():
	reset_game()
	play_again_yes.visible = false
	play_again_no.visible = false
	
# Play again NO
func _on_play_again_no_pressed():
	thank_you.visible = true
	await get_tree().create_timer(2.0).timeout
	get_tree().quit()
