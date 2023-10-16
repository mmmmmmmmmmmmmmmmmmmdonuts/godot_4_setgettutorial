class_name Player
extends CharacterBody2D


signal health_changed #signal that is visually connected to the world script's _set_HealthBar_size() function when emitted


var max_health : int = 10

##Vanilla declaration Without setters and getters, comment this out and uncomment one of the other two ways to see them work
var health : int = max_health

##Setter and Getter inline, comment out the other health declaration and uncomment below to see it work (tip, select the block and use ctrl+k win/linux to quickly uncomment)
#var health : int = max_health: #*note* the extra colon after the initialization
#	get:
#		print("health was accessed and currently is: %d" % health)
#		return health
#	set(value): #note that you *cannot* specify type here at least as of godot 4.1. e.g. set(value : int) won't work and will complain "Parse Error: Expected ")" after parameter name.
#		health = value
#		health_changed.emit()
#		print("health was set to: %d" % health)


##Setter and Getter set to methods, comment out the other health declarations, and uncomment below to see it work
#var health : int = max_health: get = _get_health, set = _set_health  #note the use of equals and a comma between the set= and get=. To my knowledge you cannot mix the inline method with this


##Here are the functions that will act as the setter and getter
func _get_health() -> int:
	print("_get_health was called and health is currently: %d" % health)
	return health

func _set_health(value : int) -> void:
	health = value
	health_changed.emit()
	print("_set_health was called and the value is now: %d" % health)


func _physics_process(delta: float) -> void:
	pass
