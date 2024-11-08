extends Resource
class_name ComponentStyle

#region variables
@export var colors : ColorPreset = ColorPreset.new() : 
	set(new_colors):
		colors=new_colors
		_init()

@export var textures : ColorPreset = ColorPreset.new() : 
	set(new_colors):
		colors=new_colors
		_init()

@export var shapes : ShapePreset = ShapePreset.new() :
	set(new_shapes):
		shapes=new_shapes
		_init()

@export var fonts : FontPreset = FontPreset.new() : 
	set(new_fonts):
		fonts=new_fonts
		_init()

@export var icons : IconPreset = IconPreset.new() :
	set(new_icons):
		icons = new_icons
		_init()

@export var default_stylebox_type : ThemeVariables.STYLEBOX_TYPE = ThemeVariables.STYLEBOX_TYPE.FLAT

@export_group('Extra')
@export var styleboxes : Dictionary
@export var stylebox_colorsets : Dictionary
@export var stylebox_types : Dictionary


var affected_nodes : Array[String]

var to_gdtheme_icons : Dictionary
var to_gdtheme_colors : Dictionary
var to_gdtheme_constants : Dictionary
var to_gdtheme_font : Dictionary
var to_gdtheme_fontsize : Dictionary
#endregion


func _init() -> void:
	set_affected_nodes()
	set_colors()
	set_constants()
	set_icons()
	set_fonts()
	set_font_properties()
	set_stylebox_colorsets()
	set_styleboxes_types()
	set_styleboxes()


func set_affected_nodes():
	pass

func set_colors():
	pass

func set_constants():
	pass

func set_fonts():
	pass

func set_font_properties():
	pass

func set_icons():
	pass

func set_stylebox_colorsets():
	pass

func set_styleboxes_types():
	pass

func set_styleboxes():
	var colorset_to_str : Dictionary = {
		ThemeVariables.COLORSET.NORMAL : 'normal',
		ThemeVariables.COLORSET.HOVER : 'hover',
		ThemeVariables.COLORSET.PRESSED : 'pressed',
		ThemeVariables.COLORSET.FOCUS : 'focus',
		ThemeVariables.COLORSET.DISABLED : 'disabled',
		ThemeVariables.COLORSET.NOCOLOR : 'nocolor'
	}
	for stylebox_name in stylebox_colorsets:
		var colorset_status = colorset_to_str[stylebox_colorsets[stylebox_name]]
		styleboxes[stylebox_name] = StyleboxGenerator.generate_stylebox(
			default_stylebox_type, colors, shapes, colorset_status)
