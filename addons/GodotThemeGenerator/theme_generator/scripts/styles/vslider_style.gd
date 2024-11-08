extends SliderStyle
class_name VSliderStyle

func set_affected_nodes():
	affected_nodes = ['VSlider']

func set_icons():
	to_gdtheme_icons = {
		'grabber':icons.grabber_normal,
		'grabber_disabled':icons.grabber_disabled,
		'grabber_highlight':icons.grabber_highlight,
		'tick':icons.tick_horizontal
	}
