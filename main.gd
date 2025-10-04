extends Control
# Canvas
@onready var konto = $"CanvasLayer/HBoxContainer/Konto"
@onready var tag_zahl = $CanvasLayer/HBoxContainer2/Label
@onready var monat_name = $CanvasLayer/HBoxContainer2/Label2

# Ingame Menü
@onready var neue_app_szene = preload("res://UI/UI_App_auswahlmenü/UI_app_auswahlmenü.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.monat_vergangen.connect(_update_anzeige)
	GameManager.button_neue_app_pressed.connect(_on_neue_app_pressed)
	_update_anzeige()
	
func _update_anzeige():
	konto.text = str("GameManager.geld")
	tag_zahl.text = GameManager.MONATE[GameManager.aktuelles_datum.monat]
	monat_name.text = str(GameManager.aktuelles_datum.jahr)
	
func _on_neue_app_pressed() -> void:
	var neue_app_instanz = neue_app_szene.instantiate()
	add_child(neue_app_instanz)
	print("neue app pressed")

	
