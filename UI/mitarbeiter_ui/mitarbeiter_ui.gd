extends Control

@export var mitarbeiter_id: Mitarbeiter

@onready var name_label: Label = %Name
@onready var persönlichkeit_label: Label = %"Persönlichkeit"
@onready var bild_texture: TextureRect = %Bild
@onready var level_label: Label = %Level
@onready var sternzeichen_label: Label = %Sternzeichen
@onready var teamwork_label: Label = %Teamwork
@onready var führung_label: Label = %"Führung"
@onready var analytik_label: Label = %Analytik
@onready var akribie_label: Label = %Akribie
@onready var kreativität_label: Label = %"Kreativität"
@onready var loyalität_label: Label = %"Loyalität"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_mitarbeiter_ui()
	
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_mitarbeiter_ui():
	name_label.text = mitarbeiter_id.mitarbeiter_name
	persönlichkeit_label.text = mitarbeiter_id.get_persönlichkeit_name()
	bild_texture.texture = mitarbeiter_id.bild
	level_label.text = str(mitarbeiter_id.level)
	sternzeichen_label.text = mitarbeiter_id.get_sternzeichen_name()
	teamwork_label.text = str(mitarbeiter_id.teamwork)
	führung_label.text = str(mitarbeiter_id.führung)
	analytik_label.text = str(mitarbeiter_id.analytik)
	akribie_label.text = str(mitarbeiter_id.akribie)
	kreativität_label.text = str(mitarbeiter_id.kreativität)
	loyalität_label.text = str(mitarbeiter_id.loyalität)
