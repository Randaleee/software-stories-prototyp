# GameManager.gd
extends Node

# Spielzustand
var aktuelles_datum: Dictionary = {"monat": 1, "jahr": 2024}
var geld: int = 10000

# Listen
var angestellte_mitarbeiter: Array[Mitarbeiter] = []
var aktives_projekt: Array[App] = []
var veröffentlichte_apps: Array[App] = []

# Konstanten
const MONATE = ["Januar", "Februar", "März", "April", "Mai", "Juni", 
				"Juli", "August", "September", "Oktober", "November", "Dezember"]

# Signale
signal monat_vergangen
signal app_fertiggestellt(app: App)
signal geld_geändert

func _ready():
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = 2.0
	timer.timeout.connect(nächster_monat)
	timer.start()

func nächster_monat():
	aktuelles_datum.monat += 1
	if aktuelles_datum.monat > 12:
		aktuelles_datum.monat = 1
		aktuelles_datum.jahr += 1
	monat_vergangen.emit()
