extends Control


func _on_neue_app_pressed() -> void:
	GameManager.button_neue_app_pressed.emit()
