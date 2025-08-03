extends Node2D


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	$FIGHT.frame = int(Constants.selection == 0)
	$ACT.frame = int(Constants.selection == 1)
	$ITEM.frame = int(Constants.selection == 2)
	$MERCY.frame = int(Constants.selection == 3)
