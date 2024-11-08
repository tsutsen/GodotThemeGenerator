@tool
extends Node
class_name StyleboxGenerator

#enum {EMPTY,FLAT,TEXTURE,LINE}


#static func generate_main_styleboxes()


static func generate_stylebox(stylebox_type:int, colors:ColorPreset, shapes:ShapePreset, state:String) -> StyleBox:
	match state:
		pass
	match stylebox_type:
		ThemeVariables.STYLEBOX_TYPE.EMPTY:
			return generate_empty_stylebox()
		ThemeVariables.STYLEBOX_TYPE.FLAT:
			return generate_flat_stylebox(colors, shapes, state)
		ThemeVariables.STYLEBOX_TYPE.TEXTURE:
			return generate_texture_stylebox(colors, shapes, state)
		ThemeVariables.STYLEBOX_TYPE.LINE:
			return generate_line_stylebox(colors, shapes, state)
	return


static func generate_flat_stylebox(colors:ColorPreset, shapes:ShapePreset, state:String, draw_center : bool = true, draw_border : bool = true) -> StyleBox:
	
	var new_stylebox = StyleBoxFlat.new()
	
	new_stylebox.bg_color = colors.elements.get(state) # this one is unique
	
	new_stylebox.corner_detail = 10
	
	if draw_border:
		new_stylebox.border_width_left = shapes.border_width
		new_stylebox.border_width_top = shapes.border_width
		new_stylebox.border_width_right = shapes.border_width
		new_stylebox.border_width_bottom = shapes.border_width
	else:
		new_stylebox.border_width_left = 0
		new_stylebox.border_width_top = 0
		new_stylebox.border_width_right = 0
		new_stylebox.border_width_bottom = 0
	
	new_stylebox.border_color = colors.borders.get(state) # this one is unique
	new_stylebox.border_blend = shapes.border_blend
	
	new_stylebox.corner_radius_top_left = shapes.corner_radius_normal
	new_stylebox.corner_radius_top_right = shapes.corner_radius_normal
	new_stylebox.corner_radius_bottom_right = shapes.corner_radius_normal
	new_stylebox.corner_radius_bottom_left = shapes.corner_radius_normal
	
	new_stylebox.expand_margin_left = shapes.expand_margins_horizontal
	new_stylebox.expand_margin_right = shapes.expand_margins_horizontal
	new_stylebox.expand_margin_top = shapes.expand_margins_vertical
	new_stylebox.expand_margin_bottom = shapes.expand_margins_vertical
	
	new_stylebox.content_margin_left = shapes.content_margins
	new_stylebox.content_margin_top = shapes.content_margins
	new_stylebox.content_margin_right = shapes.content_margins
	new_stylebox.content_margin_bottom = shapes.content_margins
	
	new_stylebox.shadow_color = colors.shadows.get(state)  # this one is unique
	new_stylebox.shadow_size = shapes.shadow_size  
	new_stylebox.shadow_offset = shapes.shadow_offset
	
	new_stylebox.anti_aliasing = true
	new_stylebox.anti_aliasing_size = 1
	
	new_stylebox.draw_center = draw_center  # this one is unique
	
	return new_stylebox

static func generate_line_stylebox(colors:ColorPreset,shapes:ShapePreset,state:String):
	pass

static func generate_texture_stylebox(colors:ColorPreset,shapes:ShapePreset,state:String):
	pass

static func generate_empty_stylebox():
	return StyleBoxEmpty.new()
