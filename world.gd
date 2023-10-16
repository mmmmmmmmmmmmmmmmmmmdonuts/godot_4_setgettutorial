extends Node2D

@onready var health_bar: ColorRect = $HealthBar
@onready var player: Player = $Player as Player
@onready var max_width : float = health_bar.size.x
@onready var max_height : float = health_bar.size.y


func _set_HealthBar_size() -> void:
	var health_fraction : float = float(player.health) / player.max_health
	var new_size : Vector2 = Vector2(max_width * health_fraction, max_height)
	health_bar.size = new_size
	

func _on_button_pressed() -> void:	
	player.health -= 1
	print(health_bar.size)
