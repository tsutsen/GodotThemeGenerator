extends ComponentStyle
class_name TexteditStyle


@export var caret_width : int = 1
@export var line_spacing : int = 4


func set_affected_nodes():
	affected_nodes = ['LineEdit','TextEdit','CodeEdit']

func set_colors():
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		'font_readonly_color' : colors.text_and_icons.disabled,
		'font_uneditable_color' : colors.text_and_icons.disabled,
		'font_selected_color' : colors.text_and_icons.normal,
		
		'caret_color' : colors.text_and_icons.normal,
		
		'selection_color' : colors.text_and_icons.disabled,
		
		#'background_color' : colors.elements.normal,
	}

func set_constants():
	to_gdtheme_constants = {
		'caret_width' : caret_width,
		'line_spacing' : line_spacing,
	}

func set_icons():
	to_gdtheme_icons = {
		'clear':icons.cross_normal,
	}

func set_stylebox_colorsets():
	stylebox_colorsets = {
		'normal':ThemeVariables.COLORSET.NORMAL,
		'focus':ThemeVariables.COLORSET.FOCUS,
		'read_only':ThemeVariables.COLORSET.DISABLED
	}
