extends ButtonStyle
class_name CheckboxStyle

func set_affected_nodes():
	affected_nodes = ['CheckBox']

func set_icons():
	to_gdtheme_icons = {
		'checked':icons.check_checked_enabled,
		'checked_disabled':icons.check_checked_disabled,
		'unchecked':icons.check_unchecked_enabled,
		'unchecked_disabled':icons.check_unchecked_disabled,
		'radio_checked':icons.radio_checked_enabled,
		'radio_checked_disabled':icons.radio_checked_disabled,
		'radio_unchecked':icons.radio_unchecked_enabled,
		'radio_unchecked_disabled':icons.radio_unchecked_disabled,
	}
