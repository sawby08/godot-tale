extends Node2D


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	queue_redraw()

func _draw() -> void:
	# draw hp bar
	draw_rect(Rect2(273.0, 398.0, (20.0 * 1.22) + 4, 25), Color.BLACK)
	draw_rect(Rect2(275.0, 400.0, 20.0 * 1.22, 21), Color.YELLOW)
