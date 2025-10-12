class_name Mitarbeiter
extends Resource

# Basis
@export_group("Steckbrief")
@export var mitarbeiter_name: String
@export var bild: CompressedTexture2D
@export var persönlichkeit: Persönlichkeitstyp # Gibt Auskunft über Attributverteilung
@export_range(1, 10) var level: int = 1  # Je höher das Level, desto mehr Attributpunkte können verteilt werden
@export var erfahrung: int = 0 # Steigt während den Projekten. Wenn voll, level-up
@export var freie_attributpunkte: int = 0
@export var sternzeichen: Sternzeichen # Gibt Bonus in bestimmten Monaten
@export var status: Status
@export var gehalt: int

# Fähigkeiten
@export_group("Attribute")
@export_range(1, 10) var ästhetik: int = 0 # Gibt Teammitgliedern Bonus
@export_range(1, 10) var kreativität: int = 0 # erhöht Innovation
@export_range(1, 10) var analytik: int = 0 # erhöht Performance
@export_range(1, 10) var akribie: int = 0 # erhöht Qualität


signal _leveled_up
signal _added_experience

func level_up():
	level += 1
	_leveled_up.emit()
	
func add_experience(amount):
	erfahrung += amount
	_added_experience.emit()
	check_for_level_up()

func check_for_level_up():
	match level:
		1:
			if erfahrung >= 100:
				level_up()
				erfahrung -= 100
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		2:
			if erfahrung >= 250:
				level_up()
				erfahrung -= 250
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		3:
			if erfahrung >= 400:
				level_up()
				erfahrung -= 400
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		4:
			if erfahrung >= 600:
				level_up()
				erfahrung -= 600
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		5:
			if erfahrung >= 900:
				level_up()
				erfahrung -= 900
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		6:
			if erfahrung >= 1300:
				level_up()
				erfahrung -= 1300
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		7:
			if erfahrung >= 1800:
				level_up()
				erfahrung -= 1800
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		8:
			if erfahrung >= 2350:
				level_up()
				erfahrung -= 2350
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		9:
			if erfahrung >= 3000:
				level_up()
				erfahrung -= 3000
				freie_attributpunkte += 5
				print("Toll," + mitarbeiter_name + "hat Level" + str(level) + "erreicht! Du darfst" + str(freie_attributpunkte) + "verteilen.")
		10:
			pass
		

enum Status {
	VERFÜGBAR,
	ANGESTELLT,
	NICHT_VERFÜGBAR
}

const STATUS_NAMES = {
	Status.VERFÜGBAR: "Verfügbar",
	Status.ANGESTELLT: "Angestellt",
	Status.NICHT_VERFÜGBAR: "Nicht verfügbar"
}

func get_status_name() -> String:
	return STATUS_NAMES[status]

enum Persönlichkeitstyp {
	ANFÜHRER,
	TEAMPLAYER,
	DESIGNER,
	VISIONÄR,
	ZAHLENMENSCH,
	KOMMUNIKATOR
}

# Dictionary für String-Konvertierung
const PERSÖNLICHKEIT_NAMES = {
	Persönlichkeitstyp.ANFÜHRER: "Anführer",
	Persönlichkeitstyp.TEAMPLAYER: "Teamplayer",
	Persönlichkeitstyp.DESIGNER: "Designer",
	Persönlichkeitstyp.VISIONÄR: "Visionär",
	Persönlichkeitstyp.ZAHLENMENSCH: "Zahlenmensch",
	Persönlichkeitstyp.KOMMUNIKATOR: "Kommunikator"
}

func get_persönlichkeit_name() -> String:
	return PERSÖNLICHKEIT_NAMES[persönlichkeit]

enum Sternzeichen {
	WIDDER,     # März-April
	STIER,      # April-Mai  
	ZWILLINGE,  # Mai-Juni
	KREBS,      # Juni-Juli
	LÖWE,       # Juli-August
	JUNGFRAU,   # August-September
	WAAGE,      # September-Oktober
	SKORPION,   # Oktober-November
	SCHÜTZE,    # November-Dezember
	STEINBOCK,  # Dezember-Januar
	WASSERMANN, # Januar-Februar
	FISCHE      # Februar-März
}

# Dictionary für String-Konvertierung
const STERNZEICHEN_NAMES = {
	Sternzeichen.WIDDER: "Widder",
	Sternzeichen.STIER: "Stier",
	Sternzeichen.ZWILLINGE: "Zwillinge",
	Sternzeichen.KREBS: "Krebs",
	Sternzeichen.LÖWE: "Löwe",
	Sternzeichen.JUNGFRAU: "Jungfrau",
	Sternzeichen.WAAGE: "Waage",
	Sternzeichen.SKORPION: "Skorpion",
	Sternzeichen.SCHÜTZE: "Schütze",
	Sternzeichen.STEINBOCK: "Steinbock",
	Sternzeichen.WASSERMANN: "Wassermann",
	Sternzeichen.FISCHE: "Fische"
}

func get_sternzeichen_name() -> String:
	return STERNZEICHEN_NAMES[sternzeichen]
