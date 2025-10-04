extends Control

@export var app_id: App

@onready var app_name: Label = %Label2
@onready var app_kategorie: Label = %Label3
@onready var app_plattform: Label = %Label4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	aktualisiere_ui()

func aktualisiere_ui():
	app_name.text = app_id.app_name
	app_kategorie.text = str(app_id.kategorie)
	app_plattform.text = str(app_id.plattform)
	
