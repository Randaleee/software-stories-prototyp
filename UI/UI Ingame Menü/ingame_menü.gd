extends Control


func _on_neue_app_pressed() -> void:
	UIManager.show_menu("app_auswahlmenü")


func _on_speichern_pressed() -> void:
	GameManager.save_game()


func _on_spiel_laden_pressed() -> void:
	GameManager.load_game()
