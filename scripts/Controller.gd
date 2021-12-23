extends Node

export (NodePath) var kitchen_location
export (NodePath) var bookshelf_location


func _on_KitchenPlacement_action_done():
	get_node(kitchen_location).monitoring = false
	get_node(kitchen_location).visible = false


func _on_BookshelfPlacement_action_done():
	get_node(bookshelf_location).monitoring = false
	get_node(bookshelf_location).visible = false
