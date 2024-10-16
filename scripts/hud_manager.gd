extends Control

@onready var score_counter: Label = $container/score_container/score_counter as Label
@onready var timer_counter: Label = $container/timer_container/timer_counter as Label
@onready var clock_timer: Timer = $clock_timer

var minutes = 0
var seconds = 0
@export_range(0,59) var default_minutes := 0
@export_range(0,59) var default_seconds := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	score_counter.text = str("%05d" % Globals.score)
	timer_counter.text = str("%02d" % default_minutes) + ":" + str("%02d" % default_seconds)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	score_counter.text = str("%05d" % Globals.score)
	seconds += delta
	timer_counter.text = str("%02d" % minutes) + ":" + str("%02d" % seconds)
	
	if seconds > 59:
		minutes += 1
		seconds = default_seconds
		timer_counter.text = str("%02d" % minutes) + ":" + str("%02d" % default_seconds)
func reset_clock_timer():
	minutes = default_minutes
	seconds = default_seconds
