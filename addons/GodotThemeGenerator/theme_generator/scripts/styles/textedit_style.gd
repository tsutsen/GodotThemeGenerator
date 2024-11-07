extends ComponentStyle
class_name TexteditStyle


@export var caret_width : int = 1
@export var line_spacing : int = 4

func _init() -> void:
	affected_nodes = ['LineEdit','TextEdit','CodeEdit']
	
	stylebox_colorsets = {
		'normal':ThemeVariables.COLORSET.NORMAL,
		'focus':ThemeVariables.COLORSET.FOCUS,
		'read_only':ThemeVariables.COLORSET.DISABLED
	}
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		'font_readonly_color' : colors.text_and_icons.disabled,
		'font_uneditable_color' : colors.text_and_icons.disabled,
		'font_selected_color' : colors.text_and_icons.normal,
		
		'caret_color' : colors.text_and_icons.normal,
		
		'selection_color' : colors.text_and_icons.disabled,
		
		'background_color' : colors.elements.normal,
	}
	
	to_gdtheme_props = {
		'caret_width' : caret_width,
		'line_spacing' : line_spacing,
	}
	
	init_styleboxes()
