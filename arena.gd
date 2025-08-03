extends StaticBody2D

var verts : Array

func _ready() -> void:
	position = Vector2(320, 320)
	verts = [
		Vector2(-283.0, -65.0),
		Vector2(-283.0, 65.0),
		Vector2(282.0, 65.0),
		Vector2(282.0, -65.0),
		Vector2(-283.0, -65.0),
	]

func _process(delta: float) -> void:
	$Collision.polygon = verts
	queue_redraw()

func _draw() -> void:
	draw_polyline(verts, Color.BLACK, 14)
	draw_polyline(verts, Color.WHITE, 10)
	draw_polygon(verts, [Color.BLACK])
