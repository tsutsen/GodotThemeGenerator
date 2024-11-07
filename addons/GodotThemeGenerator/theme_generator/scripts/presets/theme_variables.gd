extends Node

enum COLORSET {
	NORMAL,
	HOVER,
	PRESSED,
	FOCUS,
	DISABLED,
	NOCOLOR
}

enum STYLEBOX_TYPE {
	EMPTY,
	FLAT,
	TEXTURE,
	LINE
}

var colorset_to_str : Dictionary = {
	COLORSET.NORMAL : 'normal',
	COLORSET.HOVER : 'hover',
	COLORSET.PRESSED : 'pressed',
	COLORSET.FOCUS : 'focus',
	COLORSET.DISABLED : 'disabled',
	COLORSET.NOCOLOR : 'nocolor'
}
