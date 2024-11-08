@tool
extends Node


@export_category('Generation Parameters')
@export var theme_name : String = 'new theme'
@export var theme_folder : String = 'res://test_theme/'
@export var stylebox_path : String

@export var colors : ColorPreset
@export var textures : TextureSet
@export var shapes : ShapePreset
@export var fonts : FontPreset
@export var icons : IconPreset
@export var default_stylebox_type : ThemeVariables.STYLEBOX_TYPE = ThemeVariables.STYLEBOX_TYPE.FLAT

@export_category('Extra Customization')
@export var theme_styleboxes : Dictionary
@export var component_styles : Array[ComponentStyle]

@export_category('Export')
@export var generate : bool : 
	set(new):
		generate = new
		if new == true:
			generate_theme()

@export var save : bool : 
	set(new):
		save = new
		if new == true:
			save_theme()
			generate = false
			save=false

var new_theme : Theme

func prepare_generator():
	component_styles = [
		PanelStyle.new(),
		ButtonStyle.new(),
		CheckboxStyle.new(),
		TexteditStyle.new(),
		VSliderStyle.new(),
		HSliderStyle.new(),
		SpinboxStyle.new(),
		ScrollbarStyle.new(),
		ProgressbarStyle.new(),
		LabelStyle.new(),
		LabelTitleStyle.new(),
		MenuStyle.new(),
		TabStyle.new(),
		ContainerStyle.new(),
		TreeStyle.new(),
	]

func generate_styleboxes():
	var temp_stylebox_paths = []
	for colorset in ['normal','hover','pressed','focus','disabled','nocolor']:
		var temp_stylebox = StyleboxGenerator.generate_stylebox(
			default_stylebox_type, colors, shapes, colorset)
		var stylebox_path = theme_folder+'stylebox_'+colorset+'.tres'
		#if FileAccess.file_exists(stylebox_path):
			#DirAccess.remove_absolute(ProjectSettings.globalize_path(stylebox_path))
		ResourceSaver.save(temp_stylebox,stylebox_path)
		temp_stylebox_paths.append(stylebox_path)
		theme_styleboxes[colorset] = load(stylebox_path)
	#var file_system = EditorInterface.get_resource_filesystem()
	#file_system.reimport_files(temp_stylebox_paths)
	
	#update_files(temp_stylebox_paths)

func generate_theme():
	print('generating theme')
	new_theme = Theme.new()
	
	new_theme.default_font = fonts.font
	new_theme.default_font_size = fonts.font_size
	
	prepare_generator()
	generate_styleboxes()
	apply_component_styles()

func apply_component_styles(custom_only=false):
	for style in component_styles:
		if (not custom_only) or style.custom_style:
			apply(style)

func save_theme():
	apply_component_styles(true)
	var theme_path = theme_folder+theme_name+'.theme'
	print('saving theme')
	#if FileAccess.file_exists(theme_path):
		#print(DirAccess.remove_absolute(ProjectSettings.globalize_path(theme_path)))
	ResourceSaver.save(new_theme,theme_path)
	#var file_system = EditorInterface.get_resource_filesystem()
	#file_system.reimport_files([theme_path])



func apply(style : ComponentStyle):
	for theme_type in style.affected_nodes:
		new_theme.add_type(theme_type)
	
	style.stylebox_folder = theme_folder
	if not style.custom_style:
		style.colors = colors
		style.shapes = shapes
		style.fonts = fonts
		style.icons = icons
	
	style.set_styleboxes()
	
	var theme_types = style.affected_nodes
	var styleboxes = style.styleboxes
	var icons = style.to_gdtheme_icons
	var gdtheme_colors = style.to_gdtheme_colors
	var gdtheme_props = style.to_gdtheme_constants
	var gdtheme_font = style.to_gdtheme_font
	var gdtheme_fontsize = style.to_gdtheme_fontsize

	for theme_type in theme_types:
		for name in gdtheme_props:
			new_theme.set_constant(name,theme_type,gdtheme_props[name])
		for name in gdtheme_colors:
			new_theme.set_color(name,theme_type,gdtheme_colors[name])
		for name in gdtheme_font:
			new_theme.set_font(name,theme_type,gdtheme_font[name])
		for name in gdtheme_fontsize:
			new_theme.set_font_size(name,theme_type,gdtheme_fontsize[name])
		for name in styleboxes:
			new_theme.set_stylebox(name,theme_type,styleboxes[name])
		for name in icons:
			new_theme.set_icon(name,theme_type,icons[name])
