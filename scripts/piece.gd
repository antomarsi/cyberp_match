extends Node2D

class_name Piece

const COLOR = {
	BLUE = 0,
	PURPLE = 1,
	GREEN = 2,
	RED = 3,
	YELLOW = 4
}

export (COLOR) var color;
export (float) var move_duration = 0.5
onready var move_tween : Tween = $MoveTween
var matched = false

func move(target_position : Vector2):
	move_tween.interpolate_property(self, "position", position, target_position, move_duration, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	move_tween.start()

func dim():
	$Sprite.modulate.a = 0.5
	pass

func getColor() -> Color:
	match color:
		COLOR.BLUE:
			return Color("#4572e3")
		COLOR.PURPLE:
			return Color("#494182")
		COLOR.GREEN:
			return Color("#8fd032")
		COLOR.RED:
			return Color("#b25266")
		COLOR.YELLOW:
			return Color("#f8c53a")
	return Color(0, 0, 0)