class_name SavedGame
extends Resource

@export var aktuelles_datum: Dictionary = {"monat": 0, "jahr": 2024}
@export var geld: int = 10000
@export var angestellte_mitarbeiter: Array[Mitarbeiter] = []
@export var app_in_entwicklung: App = null
@export var verfügbare_apps: Array[App] = []
@export var veröffentlichte_apps: Array[App] = []
@export var monate_vergangen_seit_projektstart: int
