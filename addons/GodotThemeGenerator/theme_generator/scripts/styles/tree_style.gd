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


func set_affected_nodes():
	affected_nodes = ['Tree']

func set_colors():
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

func set_constants():
	to_gdtheme_constants = {
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

func set_icons():
	to_gdtheme_icons = {
		'arrow':icons.arrow_down,
		'select_arrow':icons.arrow_down,
		'arrow_collapsed':icons.arrow_right,
		'updown':icons.arrow_up_down,
		
		'checked':icons.check_checked_enabled,
		'checked_disabled':icons.check_checked_disabled,
		'unchecked':icons.check_unchecked_enabled,
		'unchecked_disabled':icons.check_unchecked_disabled,
		'indeterminate':icons.check_indeterminate_enabled,
		'indeterminate_disabled':icons.check_indeterminate_disabled,
		'radio_checked':icons.radio_checked_enabled,
		'radio_checked_disabled':icons.radio_checked_disabled,
		'radio_unchecked':icons.radio_unchecked_enabled,
		'radio_unchecked_disabled':icons.radio_unchecked_disabled,
	}

func set_stylebox_colorsets():
	stylebox_colorsets = {
		'button_pressed':ThemeVariables.COLORSET.PRESSED,
		'cursor':ThemeVariables.COLORSET.HOVER,
		'cursor_unfocused':ThemeVariables.COLORSET.NORMAL,
		'focus':ThemeVariables.COLORSET.FOCUS, # NOCOLOR
		'selected':ThemeVariables.COLORSET.PRESSED,
		'selected_focus':ThemeVariables.COLORSET.FOCUS,
		'panel':ThemeVariables.COLORSET.DISABLED,
	}
