extends CharacterBody2D


@export var attribut_gesamtzahl:float = -500.0
var gravity = 200.0
var max_height_reached = false
var flight_completed = false
var flight_started = false

func _ready() -> void:
	await get_tree().create_timer(1.0).timeout
	start_flight()
	
func _physics_process(delta: float) -> void:
	if not flight_started:
		return
	velocity.y += gravity * delta
	move_and_slide()
	if velocity.y > 1:
		pause_at_peak()
	
func pause_at_peak():
	set_physics_process(false)
	velocity.y = 0

	
func start_flight():
	flight_started = true
	velocity.y = attribut_gesamtzahl
