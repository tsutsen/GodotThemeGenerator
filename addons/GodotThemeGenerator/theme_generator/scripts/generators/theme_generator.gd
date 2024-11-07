@tool
extends Node

@export var theme_name : String = 'new theme'

#var _colors_backup : ColorPresetBasic

@export var colors : ColorPreset
@export var textures : TextureSet
@export var shapes : ShapePreset
@export var fonts : FontPreset

var new_theme : Theme

@export var export : bool : 
	set(new):
		export = new
		if new == true:
			generate_theme()

@export_group('Styles')
@export var panel_style : PanelStyle
@export var button_style : ButtonStyle
@export var textedit_style : TexteditStyle
@export var slider_style : SliderStyle
@export var label_style : LabelStyle
@export var label_title_style : LabelTitleStyle
@export var menu_style : MenuStyle
@export var container_style : ContainerStyle
@export var tree_style : TreeStyle

func init_styles():
	button_style = ButtonStyle.new()
	label_style = LabelStyle.new()
	textedit_style = TexteditStyle.new()
	panel_style = PanelStyle.new()
	container_style = ContainerStyle.new()
	slider_style = SliderStyle.new()
	tree_style = TreeStyle.new()
	label_title_style = LabelTitleStyle.new()
	menu_style = MenuStyle.new()

func generate_theme():
	print('generating theme')
	new_theme = Theme.new()
	
	init_theme_types()
	init_styles()
	
	apply(button_style)
	apply(textedit_style)
	apply(panel_style)
	apply(container_style)
	apply(slider_style)
	apply(tree_style)
	apply(label_style)
	apply(label_title_style)
	apply(menu_style)
	
	save_theme()

func init_theme_types():
	# background
	new_theme.add_type('Panel')
	
	# buttons
	new_theme.add_type('Button')
	new_theme.add_type('CheckButton')
	#new_theme.add_type('CheckBox')
	new_theme.add_type('ColorPickerButton')
	new_theme.add_type('OptionButton')
	
	# sliding elements
	new_theme.add_type('VSlider')
	new_theme.add_type('HSlider')
	new_theme.add_type('HScrollBar')
	new_theme.add_type('VScrollBar')
	new_theme.add_type('ProgressBar')
	
	# boring menus
	new_theme.add_type('PopupMenu')
	new_theme.add_type('PopupPanel')
	new_theme.add_type('AcceptDialog')
	
	# text edit elements
	new_theme.add_type('TextEdit')
	new_theme.add_type('LineEdit')
	
	# label elements
	new_theme.add_type('Label')
	new_theme.add_type('LabelTitle')
	new_theme.set_type_variation('LabelTitle','Label')
	
	# containers
	new_theme.add_type('MarginContainer')
	new_theme.add_type('Tree')


func save_theme():
	ResourceSaver.save(new_theme,'res://'+theme_name+'.theme')


func apply(style : ComponentStyle):
	#if style.colors == null:
	style.colors = colors
	#if style.shapes == null:
	style.shapes = shapes
	
	style.init_styleboxes()
	
	var theme_types = style.affected_nodes
	var styleboxes = style.styleboxes
	var gdtheme_colors = style.to_gdtheme_colors
	var gdtheme_props = style.to_gdtheme_props
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
