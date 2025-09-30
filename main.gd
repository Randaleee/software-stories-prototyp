extends Control

@onready var konto = $"CanvasLayer/HBoxContainer/<konto>"
@onready var tag_zahl = $CanvasLayer/HBoxContainer2/Label
@onready var monat_name = $CanvasLayer/HBoxContainer2/Label2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	konto.text = str(GameManager.geld)
	tag_zahl.text = GameManager.MONATE[GameManager.aktuelles_datum.monat]
	monat_name.text = str(GameManager.aktuelles_datum.jahr)
