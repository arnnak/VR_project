extends ColorPicker

func _on_ColorPicker_color_changed(color):
	var object = get_parent().get_parent()
	var material_top = preload('res://Geometry/table/Top.material')
	var material_legs = preload('res://Geometry/table/legs.material')
	var material_under = preload('res://Geometry/table/Under.material')
	material_top.albedo_color = color
	material_legs.albedo_color = color
	material_under.albedo_color = color
	#object.remove_child(get_parent())
		
