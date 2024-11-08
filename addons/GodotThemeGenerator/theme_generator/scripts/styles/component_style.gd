extends Resource
class_name ComponentStyle

#region variables


@export var custom_style : bool = false : 
	set(new):
		custom_style = new

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

var stylebox_folder : String

func set_styleboxes():
	var colorset_to_str : Dictionary = {
		ThemeVariables.COLORSET.NORMAL : 'normal',
		ThemeVariables.COLORSET.HOVER : 'hover',
		ThemeVariables.COLORSET.PRESSED : 'pressed',
		ThemeVariables.COLORSET.FOCUS : 'focus',
		ThemeVariables.COLORSET.DISABLED : 'disabled',
		ThemeVariables.COLORSET.NOCOLOR : 'nocolor'
	}
	
	if stylebox_folder:
		for stylebox_name in stylebox_colorsets:
			var colorset_status = colorset_to_str[stylebox_colorsets[stylebox_name]]
			if custom_style:
				var stylebox_path = stylebox_folder+'custom_stylebox_'+affected_nodes[0]+'_'+colorset_status+'.tres'
				var stylebox_temp = StyleboxGenerator.generate_stylebox(default_stylebox_type, colors, shapes, colorset_status)
				ResourceSaver.save(stylebox_temp,stylebox_path)
				var file_system = EditorInterface.get_resource_filesystem()
				file_system.reimport_files([stylebox_path])
				styleboxes[stylebox_name] = load(stylebox_path)
			else:
				var stylebox_path = stylebox_folder+'stylebox_'+colorset_status+'.tres'
				styleboxes[stylebox_name] = load(stylebox_path)
