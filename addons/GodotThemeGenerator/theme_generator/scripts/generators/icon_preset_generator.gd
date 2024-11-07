@tool
extends Node
class_name IconPresetGenerator

@export_global_dir var icons_folder
@export_global_dir var preset_folder 
@export var icon_preset_name : String = 'new_icon_preset'

@export var import_icons : bool = false :
	set(new_val):
		if new_val == true and icons_folder != null:
			import_from_folder()
		import_icons = new_val

func import_from_folder():
	print('import icons')
	var new_icon_preset = IconPreset.new()
	var icon_path = ''
	for icon_name in DirAccess.get_files_at(icons_folder):
		var icon_extension = icon_name.get_extension()
		if (icon_extension in ['svg','png']):
			icon_path = icons_folder+'/'+icon_name
			icon_name = icon_name.replace('.'+icon_extension,'')
			new_icon_preset.set(icon_name, load(icon_path))
	save_icon_preset(new_icon_preset)

func save_icon_preset(new_icon_preset):
	var save_path = preset_folder+'/'+icon_preset_name+'.tres'
	ResourceSaver.save(new_icon_preset,save_path)
