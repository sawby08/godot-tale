extends StaticBody2D

var verts : Array

func _ready() -> void:
	position = Vector2(320, 320)
	verts = [
		Vector2(-283.0, -65.0),
		Vector2(-283.0, 65.0),
		Vector2(282.0, 65.0),
		Vector2(282.0, -65.0)
	]

func _process(delta: float) -> void:
	var black_outline_verts = []
	var white_outline_verts = []
	
	for i in range(verts.size()):
		var v = verts[i]
		
		var x_sign = 1 if v.x > 0 else -1
		var y_sign = 1 if v.y > 0 else -1
		var black_offset = Vector2(7 * x_sign, 7 * y_sign)
		var white_offset = Vector2(5 * x_sign, 5 * y_sign)

		black_outline_verts.append(v + black_offset)
		white_outline_verts.append(v + white_offset)

	$BlackOutline.polygon = black_outline_verts
	$WhiteOutline.polygon = white_outline_verts
	$Fill.polygon = verts
	$Collision.polygon = verts
