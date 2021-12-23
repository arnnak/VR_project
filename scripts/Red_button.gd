extends Button
var red_color = Color.red

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Red_button_pressed():
	var object = get_parent().get_parent()
	var material_top = preload('res://Geometry/table/Top.material')
	var material_legs = preload('res://Geometry/table/legs.material')
	var material_under = preload('res://Geometry/table/Under.material')
	material_top.albedo_color = red_color
	material_legs.albedo_color = red_color
	material_under.albedo_color = red_color
	object.remove_child(get_parent())
