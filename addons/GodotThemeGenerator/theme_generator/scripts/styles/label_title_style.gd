extends LabelStyle
class_name LabelTitleStyle

func set_affected_nodes():
	affected_nodes = ['LabelTitle']

func set_font_properties():
	to_gdtheme_fontsize = {
		'font_size' : fonts.font_title_size,
	}
