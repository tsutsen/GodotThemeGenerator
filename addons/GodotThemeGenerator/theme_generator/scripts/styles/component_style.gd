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

var affected_nodes : Array[String]

@export var styleboxes : Dictionary
@export var stylebox_colorsets : Dictionary
@export var stylebox_types : Dictionary
@export var stylebox_type : ThemeVariables.STYLEBOX_TYPE = ThemeVariables.STYLEBOX_TYPE.FLAT

var to_gdtheme_colors : Dictionary
var to_gdtheme_props : Dictionary
var to_gdtheme_font : Dictionary
var to_gdtheme_fontsize : Dictionary

#var stylebox_names : Array[String]

var colorset_to_str : Dictionary = {
	ThemeVariables.COLORSET.NORMAL : 'normal',
	ThemeVariables.COLORSET.HOVER : 'hover',
	ThemeVariables.COLORSET.PRESSED : 'pressed',
	ThemeVariables.COLORSET.FOCUS : 'focus',
	ThemeVariables.COLORSET.DISABLED : 'disabled',
	ThemeVariables.COLORSET.NOCOLOR : 'nocolor'
}

func init_styleboxes():
	for stylebox_name in stylebox_colorsets:
		var colorset_status = colorset_to_str[stylebox_colorsets[stylebox_name]]
		print(colorset_status)
		styleboxes[stylebox_name] = StyleboxGenerator.generate_stylebox(
			stylebox_type, colors, shapes, colorset_status)
