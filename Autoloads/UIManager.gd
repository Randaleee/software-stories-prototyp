extends Node

var current_menu: Control = null # Wird genutzt um immer nur ein offenes Menü zu haben
@onready var hud: Control
@onready var ingame_menü: Control
@onready var app_auswahlmenü: Control
@onready var ui_app_in_entwicklung: Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func setup(main_node: Control):
	var canvas = main_node.get_node("CanvasLayer")
	hud = canvas.get_node("HUD")
	ingame_menü = canvas.get_node("Ingame Menü")
	app_auswahlmenü = canvas.get_node("App Auswahlmenü")
	ui_app_in_entwicklung = canvas.get_node("UI App in Entwicklung")

func show_menu(menu_name: String) -> void:
	if current_menu:
		current_menu.hide()
		
	match menu_name:
		"app_auswahlmenü":
			current_menu = app_auswahlmenü
		"ui_app_in_entwicklung":
			current_menu = ui_app_in_entwicklung
			
	if current_menu:
		if current_menu.has_method("update_ui"):
			current_menu.update_ui()
		current_menu.show()



func close_all_menus():
	if current_menu:
		current_menu.hide()
		current_menu = null
