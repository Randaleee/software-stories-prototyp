extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	zeige_apps_zur_auswahl()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func zeige_apps_zur_auswahl():
	var app = load("res://UI/app_ui/app_ui.tscn")
	
	for eintrag in "res://Data/Apps/":
		app.new
		add_child(app)
		
