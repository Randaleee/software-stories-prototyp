extends Control

@onready var konto = %"Konto"
@onready var tag_zahl = %Tag
@onready var monat_name = %"Monat Name"

func _ready() -> void:
	GameManager.monat_vergangen.connect(_update_ui)
	GameManager.spiel_geladen.connect(_update_ui)
	_update_ui()
	
func _update_ui():
	konto.text = str(GameManager.geld)
	tag_zahl.text = GameManager.MONATE[GameManager.aktuelles_datum.monat]
	monat_name.text = str(GameManager.aktuelles_datum.jahr)
