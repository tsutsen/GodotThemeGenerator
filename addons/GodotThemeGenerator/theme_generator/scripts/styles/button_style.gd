extends ComponentStyle
class_name ButtonStyle



func _init() -> void:
	affected_nodes = ['Button','CheckButton','ColorPickerButton','OptionButton']
	
	stylebox_colorsets = {
		'normal':ThemeVariables.COLORSET.NORMAL,
		'hover':ThemeVariables.COLORSET.HOVER,
		'pressed':ThemeVariables.COLORSET.PRESSED,
		'hover_pressed':ThemeVariables.COLORSET.PRESSED,
		'focus':ThemeVariables.COLORSET.FOCUS,
		'disabled':ThemeVariables.COLORSET.DISABLED
	}
	
	to_gdtheme_icons = {
		'checked':icons.toggle_checked_enabled,
		'checked_disabled':icons.toggle_checked_disabled,
		'unchecked':icons.toggle_unchecked_enabled,
		'unchecked_disabled':icons.toggle_unchecked_disabled,
		'arrow':icons.arrow_up_down,
	}
	
	to_gdtheme_colors = {
		'font_color' : colors.text_and_icons.normal,
		'font_disabled_color' : colors.text_and_icons.disabled,
		'font_focus_color' : colors.text_and_icons.focus,
		'font_hover_color' : colors.text_and_icons.hover,
		'font_pressed_color' : colors.text_and_icons.pressed,
		'font_hover_pressed_color' : colors.text_and_icons.pressed,
		
		'icon_normal_color' : colors.text_and_icons.normal,
		'icon_disabled_color' : colors.text_and_icons.disabled,
		'icon_focus_color' : colors.text_and_icons.focus,
		'icon_hover_color' : colors.text_and_icons.hover,
		'icon_pressed_color' : colors.text_and_icons.pressed,
		'icon_hover_pressed_color' : colors.text_and_icons.pressed,
	}
	
	init_styleboxes()
