extends Button

var blue_color = Color.blue

func _on_Blue_button_pressed():
	var object = get_parent().get_parent()
	var material_top = preload('res://Geometry/table/Top.material')
	var material_legs = preload('res://Geometry/table/legs.material')
	var material_under = preload('res://Geometry/table/Under.material')
	material_top.albedo_color = blue_color
	material_legs.albedo_color = blue_color
	material_under.albedo_color = blue_color
	object.remove_child(get_parent())
	
