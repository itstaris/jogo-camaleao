extends Node2D

@onready var player: Node2D = $player as CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#player.player_has_died.connect(reload_game)
	Globals.score = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func reload_game():
	#await get_tree().create_timer(1.0).timeout
	#get_tree().reload_current_scene()
