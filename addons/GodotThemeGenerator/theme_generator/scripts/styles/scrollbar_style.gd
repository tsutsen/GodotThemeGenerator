extends ComponentStyle
class_name ScrollbarStyle


func set_affected_nodes():
	affected_nodes = ['HScrollBar','VScrollBar']

func set_stylebox_colorsets():
	stylebox_colorsets = {
		'grabber': ThemeVariables.COLORSET.NORMAL,
		'grabber_highlight':ThemeVariables.COLORSET.HOVER,
		'grabber_pressed':ThemeVariables.COLORSET.PRESSED,
		'scroll' : ThemeVariables.COLORSET.DISABLED,
		'scroll_focus' : ThemeVariables.COLORSET.HOVER
	}
