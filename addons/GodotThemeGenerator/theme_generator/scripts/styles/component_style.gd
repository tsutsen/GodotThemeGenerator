extends Resource
class_name ComponentStyle

@export var shapes : ShapePreset = ShapePreset.new() :
	set(new_shapes):
		shapes=new_shapes
		_init()

@export var colors : ColorPreset = ColorPreset.new() : 
	set(new_colors):
		colors=new_colors
		_init()

@export var fonts : FontPreset = FontPreset.new() : 
	set(new_fonts):
		fonts=new_fonts
		_init()

@export var icons : IconPreset = IconPreset.new() :
	set(new_icons):
		icons = new_icons
		#update_icons()
		_init()


@export var styleboxes : Dictionary
@export var stylebox_colorsets : Dictionary
@export var stylebox_types : Dictionary
@export var stylebox_type : ThemeVariables.STYLEBOX_TYPE = ThemeVariables.STYLEBOX_TYPE.FLAT

@export var to_gdtheme_icons : Dictionary

var affected_nodes : Array[String]

var to_gdtheme_colors : Dictionary
var to_gdtheme_props : Dictionary
var to_gdtheme_font : Dictionary
var to_gdtheme_fontsize : Dictionary



var colorset_to_str : Dictionary = {
	ThemeVariables.COLORSET.NORMAL : 'normal',
	ThemeVariables.COLORSET.HOVER : 'hover',
	ThemeVariables.COLORSET.PRESSED : 'pressed',
	ThemeVariables.COLORSET.FOCUS : 'focus',
	ThemeVariables.COLORSET.DISABLED : 'disabled',
	ThemeVariables.COLORSET.NOCOLOR : 'nocolor'
}

func update_icons():
	to_gdtheme_icons = {
		'close':icons.cross_normal,
		'close_pressed':icons.cross_pressed,
		
		'clear':icons.cross_normal,
			
		'arrow':icons.arrow_down,
		'arrow_collapsed':icons.arrow_right,
		'updown':icons.arrow_up_down,
		'submenu':icons.arrow_right,
		
		'grabber':icons.grabber_normal,
		'grabber_disabled':icons.grabber_disabled,
		'grabber_highlight':icons.grabber_highlight,
		
		'checked':icons.check_checked_enabled,
		'checked_disabled':icons.check_checked_disabled,
		'unchecked':icons.check_unchecked_enabled,
		'unchecked_disabled':icons.check_unchecked_disabled,
		'indeterminate':icons.check_indeterminate_enabled,
		'indeterminate_disabled':icons.check_indeterminate_disabled,
		'radio_checked':icons.radio_checked_enabled,
		'radio_checked_disabled':icons.radio_checked_disabled,
		'radio_unchecked':icons.radio_unchecked_enabled,
		'radio_unchecked_disabled':icons.radio_unchecked_disabled,
		
		'tick':icons.tick_vertical, # todo smth with vertical and horizontal
		'space':icons.point_normal, 
	}
	
	#var test : Theme = Theme.new()
	
func init_styleboxes():
	for stylebox_name in stylebox_colorsets:
		var colorset_status = colorset_to_str[stylebox_colorsets[stylebox_name]]
		styleboxes[stylebox_name] = StyleboxGenerator.generate_stylebox(
			stylebox_type, colors, shapes, colorset_status)
