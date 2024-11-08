extends ComponentStyle
class_name ContainerStyle

@export var separation : int = 8

@export var margin_bottom : int = 10
@export var margin_left : int = 16
@export var margin_right : int = 16
@export var margin_top : int = 10


func set_affected_nodes():
	affected_nodes = ['MarginContainer','BoxContainer']


func set_constants():
	to_gdtheme_constants = {
		'margin_bottom':margin_bottom,
		'margin_left':margin_left,
		'margin_right':margin_right,
		'margin_top':margin_top,
		'separation':separation
	}
