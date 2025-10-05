extends Control

@onready var app_name = %Label
@onready var wert_innovation = %Label3
@onready var wert_design = %Label5
@onready var wert_performance = %Label7
@onready var wert_qualität =%Label9
@onready var progressbar = %ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.connect("monat_vergangen", update_progess_bar)
	
func update_ui():
	app_name.text = GameManager.app_in_entwicklung.app_name
	wert_innovation.text = str(GameManager.app_in_entwicklung.innovation)
	wert_design.text = str(GameManager.app_in_entwicklung.design)
	wert_performance.text = str(GameManager.app_in_entwicklung.performance)
	wert_qualität.text = str(GameManager.app_in_entwicklung.qualität)

func update_progess_bar():
	if GameManager.app_in_entwicklung != null:
		progressbar.value = GameManager.app_in_entwicklung.fortschritt
