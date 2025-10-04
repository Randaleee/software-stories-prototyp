extends Control

@onready var neue_app_szene = preload("res://UI/UI_App_auswahlmenü/UI_app_auswahlmenü.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_neue_app_pressed() -> void:
	var neue_app_instanz = neue_app_szene.instantiate()
	get_tree().root.add_child(neue_app_instanz)
