extends Resource
class_name ShapePreset

@export_group('Corner Radius','corner_radius')
@export var corner_radius_normal : int
@export var corner_radius_secondary : int

@export_group('Borders')
@export var border_width : int
@export var border_blend : bool
@export var content_margins : int
@export var expand_margins_vertical : int
@export var expand_margins_horizontal : int

@export_group('Shadows','shadow')
@export var shadow_size : int
@export var shadow_offset : Vector2i

@export_group('Buttons','button')
@export var button_draw_bg = true
