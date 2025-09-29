class_name Projekt
extends Resource

@export var projekt_name: String
@export_multiline var beschreibung: String
@export_range(1, 5) var schwierigkeit: int # hängt von den zu füllenden Attributpunkten ab.
@export var dauer: int # Zeit, die zur Verfügung steht, in Tagen.
@export var belohnung: int # Geldeinheit
@export var projekttyp: Projekttyp
@export var gewährte_erfahrung: int

# Zu erfüllende Attribute
@export_range(1, 200) var design: int
@export_range(1, 200) var performance: int
@export_range(1, 200) var innovation: int
@export_range(1, 200) var qualität: int


enum Projekttyp {
	WEBSITE,
	DATENBANK,
	APP,
	KI_TOOL,
	ONLINE_SHOP,
}

const PROJEKTTYP_NAMEN = {
	Projekttyp.WEBSITE: "Website",
	Projekttyp.DATENBANK: "Datenbank",
	Projekttyp.APP: "App",
	Projekttyp.KI_TOOL: "KI Tool",
	Projekttyp.ONLINE_SHOP: "Online Shop",
}
