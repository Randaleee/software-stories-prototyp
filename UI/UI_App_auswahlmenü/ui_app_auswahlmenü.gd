extends Control

@onready var app_container = %"App Container"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	zeige_apps_zur_auswahl()


func zeige_apps_zur_auswahl():
	var app_ui_scene = preload("res://UI/app_ui/app_ui.tscn")
	
	for app in GameManager.verfügbare_apps:
		print(app)
		var app_ui_instance = app_ui_scene.instantiate()
		app_ui_instance.app_id = app
		app_container.add_child(app_ui_instance)
		
