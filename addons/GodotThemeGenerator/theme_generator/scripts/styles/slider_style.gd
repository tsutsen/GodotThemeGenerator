extends ComponentStyle
class_name SliderStyle


func set_affected_nodes():
	affected_nodes = ['VSlider','HSlider']

func set_icons():
	to_gdtheme_icons = {
		'grabber':icons.grabber_normal,
		'grabber_disabled':icons.grabber_disabled,
		'grabber_highlight':icons.grabber_highlight,
		'tick':icons.tick_vertical
	}

func set_stylebox_colorsets():
	stylebox_colorsets = {
		'grabber_area':ThemeVariables.COLORSET.NORMAL,
		'grabber_area_highlight':ThemeVariables.COLORSET.PRESSED,
		'slider':ThemeVariables.COLORSET.DISABLED
	}
