extends ComponentStyle
class_name TreeStyle


@export var button_margin : int = 4
@export var item_margin : int = 16

@export var inner_item_margin_left : int = 4
@export var inner_item_margin_right : int = 4

@export var icon_max_width : int = 16

@export var h_separation : bool = 4
@export var v_separation : bool = 4

@export var children_hl_line_width : int = 1
@export var parent_hl_line_width : int = 1
@export var relationship_line_width : int = 1

@export var draw_guides : bool = true
@export var draw_relationship_lines : bool = false

@export var draw_borders : bool = false



@export var icons : Dictionary = {
	'arrow':null,
	'arrow_collapsed':null,
	'checked':null,
	'checked_disabled':null,
	'indeterminate':null,
	'indeterminate_disabled':null,
	'select_arrow':null,
	'unchecked':null,
	'unchecked_disabled':null,
	'updown':null
}


func _init() -> void:
	affected_nodes = ['Tree']
	
	stylebox_colorsets = {
		'button_pressed':ThemeVariables.COLORSET.PRESSED,
		'cursor':ThemeVariables.COLORSET.HOVER,
		'cursor_unfocused':ThemeVariables.COLORSET.NORMAL,
		'focus':ThemeVariables.COLORSET.FOCUS, # NOCOLOR
		'selected':ThemeVariables.COLORSET.PRESSED,
		'selected_focus':ThemeVariables.COLORSET.FOCUS,
		'panel':ThemeVariables.COLORSET.DISABLED,
	}
	#stylebox_types = {
		#'panel':ThemeVariables.STYLEBOX_TYPE.EMPTY,
		#'focus':ThemeVariables.STYLEBOX_TYPE.EMPTY
	#}
	
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		'font_disabled_color' : colors.text_and_icons.disabled,
		'font_selected_color' : colors.text_and_icons.pressed,
		
		'guide_color' : colors.text_and_icons.normal,
		'children_hl_line_color' : colors.text_and_icons.normal,
		'parent_hl_line_color' : colors.text_and_icons.normal,
		'relationship_line_color' : colors.text_and_icons.normal,
		'drop_position_color' : colors.text_and_icons.hover,
	}
	to_gdtheme_props = {
		'button_margin' : button_margin,
		'item_margin' : item_margin,
		
		'inner_item_margin_right' : inner_item_margin_right,
		'inner_item_margin_left' : inner_item_margin_left,
		
		'h_separation' : h_separation,
		'v_separation' : v_separation,
		
		'children_hl_line_width' : children_hl_line_width,
		'parent_hl_line_width' : parent_hl_line_width,
		'relationship_line_width' : relationship_line_width,

		'icon_max_width' : icon_max_width,
		
		'draw_guides' : int(draw_guides),
		'draw_relationship_lines' : int(draw_relationship_lines),
	}

	init_styleboxes()
