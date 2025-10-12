# GameManager.gd
extends Node

# Spielzustand
var aktuelles_datum: Dictionary = {"monat": 0, "jahr": 2024}
var geld: int = 10000

# Listen
var angestellte_mitarbeiter: Array[Mitarbeiter] = []
var app_in_entwicklung: App = null
var verfügbare_apps: Array[App] = []
var veröffentlichte_apps: Array[App] = []
var monate_vergangen_seit_projektstart: int

# Konstanten
const MONATE = ["Januar", "Februar", "März", "April", "Mai", "Juni", 
				"Juli", "August", "September", "Oktober", "November", "Dezember"]

# Signale
signal monat_vergangen
signal app_fertiggestellt(app: App)
signal geld_geändert




func _ready():
	starte_ingame_zeit()
	verfügbare_apps.append(load("res://Data/Apps/einkaufsliste.tres"))
	verfügbare_apps.append(load("res://Data/Apps/schrittzähler.tres"))
	verfügbare_apps.append(load("res://Data/Apps/taschenlampe.tres"))
	
	stelle_mitarbeiter_ein("res://Data/Mitarbeiter/Davina.tres")
	stelle_mitarbeiter_ein("res://Data/Mitarbeiter/Jörg.tres")
	
	monat_vergangen.connect(entwickle_app)
	app_fertiggestellt.connect(on_app_fertiggestellt)

# Zeitmanagement
func starte_ingame_zeit():
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = 2.0
	timer.timeout.connect(nächster_monat)
	timer.start()

func nächster_monat():
	aktuelles_datum.monat += 1
	if aktuelles_datum.monat == 12:
		aktuelles_datum.monat = 0
		aktuelles_datum.jahr += 1
	monat_vergangen.emit()

func stelle_mitarbeiter_ein(mitarbeiter_pfad: String):
	angestellte_mitarbeiter.append(load(mitarbeiter_pfad))

func starte_app_entwicklung(app: App):
	if app_in_entwicklung != null:
		print("Es läuft bereits ein Projekt!")
	app_in_entwicklung = app
	monate_vergangen_seit_projektstart = 0

func entwickle_app():
	if app_in_entwicklung != null:
		berechne_monate_vergangen_seit_projektstart()
		kalkuliere_fortschritt()
		berechne_app_attribute()
		if monate_vergangen_seit_projektstart == app_in_entwicklung.entwicklungszeit:
			app_fertiggestellt.emit()
		return
	return

func berechne_monate_vergangen_seit_projektstart():
	monate_vergangen_seit_projektstart += 1
	print(monate_vergangen_seit_projektstart)
	print(app_in_entwicklung.entwicklungszeit)

func kalkuliere_fortschritt():
	app_in_entwicklung.fortschritt = float(monate_vergangen_seit_projektstart) / float(app_in_entwicklung.entwicklungszeit) * 100
	print("Fortschritt: ", app_in_entwicklung.fortschritt)

func on_app_fertiggestellt():
	print("App fertiggestellt")
	UIManager.show_menu("UI App beendet")
	veröffentlichte_apps.append(app_in_entwicklung)

func berechne_app_attribute():
	if app_in_entwicklung != null:
		for mitarbeiter: Mitarbeiter in angestellte_mitarbeiter:
			app_in_entwicklung.design += mitarbeiter.ästhetik
			app_in_entwicklung.innovation += mitarbeiter.kreativität
			app_in_entwicklung.performance += mitarbeiter.analytik
			app_in_entwicklung.qualität += mitarbeiter.akribie
			
