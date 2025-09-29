class_name Angestellte_Mitarbeiter

var _content:Array[Mitarbeiter] = []

func add_mitarbeiter(mitarbeiter:Mitarbeiter):
	_content.append(mitarbeiter)

func remove_mitarbeiter(mitarbeiter:Mitarbeiter):
	_content.erase(mitarbeiter)
