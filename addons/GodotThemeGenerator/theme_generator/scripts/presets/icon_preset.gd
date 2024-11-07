@tool
extends Resource
class_name IconPreset


@export_group('Figures','figures')

@export_group('Arrow','arrow')
@export var arrow_down : CompressedTexture2D
@export var arrow_right : CompressedTexture2D
@export var arrow_up_down : CompressedTexture2D

@export_group('Cross','cross')
@export var cross_normal : CompressedTexture2D
@export var cross_pressed : CompressedTexture2D

@export_group('Point','point')
@export var point_normal : CompressedTexture2D
@export var point_pressed : CompressedTexture2D

@export_group('Tick','tick')
@export var tick_vertical : CompressedTexture2D
@export var tick_horizontal : CompressedTexture2D


@export_group('Grabber','grabber')
@export var grabber_normal : CompressedTexture2D
@export var grabber_highlight : CompressedTexture2D
@export var grabber_disabled : CompressedTexture2D


@export_group('Radio','radio')
@export var radio_checked_enabled : CompressedTexture2D
@export var radio_checked_disabled : CompressedTexture2D
@export var radio_unchecked_enabled : CompressedTexture2D
@export var radio_unchecked_disabled : CompressedTexture2D

@export_group('Check','check')
@export var check_checked_enabled : CompressedTexture2D
@export var check_checked_disabled : CompressedTexture2D
@export var check_unchecked_enabled : CompressedTexture2D
@export var check_unchecked_disabled : CompressedTexture2D
@export var check_indeterminate_enabled : CompressedTexture2D
@export var check_indeterminate_disabled : CompressedTexture2D

@export_group('Toggle','toggle')
@export var toggle_checked_enabled : CompressedTexture2D
@export var toggle_checked_disabled : CompressedTexture2D
@export var toggle_unchecked_enabled : CompressedTexture2D
@export var toggle_unchecked_disabled : CompressedTexture2D
	
