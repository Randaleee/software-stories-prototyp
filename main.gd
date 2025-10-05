extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	UIManager.setup(self) # Wird benötigt um Nodes an GameManager zu übergeben
