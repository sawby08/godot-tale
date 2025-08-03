extends Node2D

func _ready() -> void:
	$Name.text = Constants.encounter.player.name + "   lv " + str(Constants.encounter.player.love)

func _process(delta: float) -> void:
	$HpDisplay.position.x = 290 + Constants.max*1.2
	if Constants.hp < 10:
		$HpDisplay.text = "0" + str(Constants.hp) + " / " + str(Constants.max)
	else:
		$HpDisplay.text = str(Constants.hp) + " / " + str(Constants.max)
		
	queue_redraw()

func _draw() -> void:
	# draw hp bar
	draw_rect(Rect2(273.0, 398.0, (Constants.max * 1.2) + 4, 25), Color.BLACK)
	draw_rect(Rect2(275.0, 400.0, Constants.max * 1.2, 21), Color.DARK_RED)
	draw_rect(Rect2(275.0, 400.0, Constants.hp * 1.2, 21), Color.YELLOW)
