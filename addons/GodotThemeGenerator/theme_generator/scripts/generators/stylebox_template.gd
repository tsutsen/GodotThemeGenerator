extends Resource
class_name StyleboxTemplate

@export var name : String
@export_enum('EMPTY','FLAT','TEXTURE','LINE') var type
@export var color_state : String
@export var stylebox : StyleBox

static func generate_stylebox_template(name:String, type:int, color_state:String) -> StyleboxTemplate:
	var new_stylebox_template = StyleboxTemplate.new()
	new_stylebox_template.name = name
	new_stylebox_template.type = type
	new_stylebox_template.color_state = color_state
	return new_stylebox_template
