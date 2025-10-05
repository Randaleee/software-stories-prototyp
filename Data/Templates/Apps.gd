class_name App
extends Resource

@export_group("Spielerentscheidung")
@export var app_name: String
@export var plattform: Plattform
@export var kategorie: Kategorie
@export var entwicklungszeit: int
@export var fortschritt: int = 0
@export var schwerpunkt: Schwerpunkt

@export_group("Eigenschaften")
@export_range(1, 5) var schwierigkeit: int # hängt von der Kategorie ab
@export var gewährte_erfahrung: int
@export var belohnung: int # Geldeinheit

@export_group("Attribute")
@export_range(1, 200) var innovation: int
@export_range(1, 200) var design: int
@export_range(1, 200) var performance: int
@export_range(1, 200) var qualität: int

enum Schwerpunkt {
	DESIGN,
	PERFORMANCE,
	INNOVATION,
	QUALITÄT,
}

enum Plattform {
	NEWTON,
	HUMANOID,
	RAINFOREST,
	DOORS,
	SUNGSUM
}

enum Kategorie {
	UNTERHALTUNG,
	SOZIALES,
	BILDUNG,
	PRODUKTIVITÄT,
	GESUNDHEIT,
}

const KATEGORIE_NAMEN = {
	Kategorie.UNTERHALTUNG: "Unterhaltung",
	Kategorie.SOZIALES: "Soziales",
	Kategorie.BILDUNG: "Bildung",
	Kategorie.PRODUKTIVITÄT: "Produktivität",
	Kategorie.GESUNDHEIT: "Gesundheit",
}
