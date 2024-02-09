extends CharacterBody2D

# Tärinän asetukset
var tremble_magnitude := 2  # Tärinäefektin voimakkuus
var tremble_frequency := 0.1  # Kuinka usein tärinä tapahtuu sekunneissa
var is_trembling := false
var original_position := Vector2()
var min_idle_time := 0.5  # Minimi aika tärinöiden välillä
var max_idle_time := 2.0  # Maksimi aika tärinöiden välillä
var next_tremble_time := 0.0  # Seuraavan tärinän ajankohta

func _ready():
	original_position = position
	start_tremble_timer()

func start_tremble_timer():
	var idle_time = randf() * (max_idle_time - min_idle_time) + min_idle_time
	var tremble_timer = Timer.new()
	tremble_timer.set_wait_time(idle_time)
	tremble_timer.set_one_shot(false)  # Jatkaa toistoa
	add_child(tremble_timer)
	tremble_timer.connect("timeout", Callable(self, "_on_tremble_timer_timeout"))
	tremble_timer.start()

func _on_tremble_timer_timeout():
	if not is_trembling:
		is_trembling = true
		await get_tree().create_timer(randf() * 1.5 + 0.5).timeout  # 0.5 - 2.0 sekunnin satunnainen viive
		is_trembling = false

func _process(delta):
	if is_trembling and OS.get_ticks_msec() > next_tremble_time:
		apply_tremble()
		next_tremble_time = OS.get_ticks_msec() + tremble_frequency * 1000

func apply_tremble():
	var tremble_x = (randf() * 2 - 1) * tremble_magnitude
	var tremble_y = (randf() * 2 - 1) * tremble_magnitude
	position = original_position + Vector2(tremble_x, tremble_y)
