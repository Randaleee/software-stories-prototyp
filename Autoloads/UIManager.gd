extends Node

var current_menu: Control = null # Wird genutzt um immer nur ein offenes Menü zu haben
@onready var hud: Control = %HUD
@onready var app_auswahlmenü: Control = %"App Auswahlmenü"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
