extends Button

func _on_Submit_button_pressed():
	var object = get_parent().get_parent()
	object.remove_child(get_parent())
		
