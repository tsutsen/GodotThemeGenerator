extends ComponentStyle
class_name SliderStyle


func _init() -> void:
	affected_nodes = ['VSlider','HSlider']
	stylebox_colorsets = {
		'grabber_area':ThemeVariables.COLORSET.NORMAL,
		'grabber_area_highlight':ThemeVariables.COLORSET.PRESSED,
		'slider':ThemeVariables.COLORSET.DISABLED
	}
	to_gdtheme_icons = {
		'grabber':icons.grabber_normal,
		'grabber_disabled':icons.grabber_disabled,
		'grabber_highlight':icons.grabber_highlight,
		'tick':icons.tick_vertical
	}
	to_gdtheme_colors = {
		
	}
	to_gdtheme_props = {
		
	}
	
	#var modified_shapes = shapes.duplicate(true)
	#modified_shapes.expand_margins_vertical += 0
	
	init_styleboxes()
