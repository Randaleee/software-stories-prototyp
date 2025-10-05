extends Node

var current_menu: Control = null # Wird genutzt um immer nur ein offenes Menü zu haben
@onready var hud: Control = %HUD
@onready var ingame_menü: Control = %"Ingame Menü"
@onready var app_auswahlmenü: Control = %"App Auswahlmenü"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func show_menu(menu_name: String) -> void:
	if current_menu:
		current_menu.hide()
		
	match menu_name:
		"app_auswahlmenü":
			current_menu = app_auswahlmenü
			
	if current_menu:
		current_menu.show()
		
func close_all_menus():
	if current_menu:
		current_menu.hide()
		current_menu = null
