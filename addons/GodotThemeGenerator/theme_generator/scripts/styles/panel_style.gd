extends ComponentStyle
class_name PanelStyle


func _init() -> void:
	affected_nodes = ['Panel']
	
	stylebox_colorsets = {
		'panel':ThemeVariables.COLORSET.DISABLED
	}
	to_gdtheme_colors = {
		
	}
	to_gdtheme_props = {
		
	}
	
	init_styleboxes()
