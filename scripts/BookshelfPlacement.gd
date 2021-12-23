extends Area

export (String) var target_name
export (PackedScene) var bookshelf_scene
signal action_done
var is_entered = false


func _on_BookshelfPlacement_body_entered(body):
	if not is_entered:
		if body.name == target_name:
			is_entered = true
			var book = bookshelf_scene.instance()
			#book.mode = RigidBody.MODE_KINEMATIC
			#book.get_child(0).rotate_object_local(Vector3(0,1,0),-PI/2)
			get_parent().add_child(book)
			book.rotate_object_local(Vector3(0,1,0),-PI/2)
			book.scale = Vector3(1,1,1)
			book.translation = Vector3(-6,0,-10)
			emit_signal("action_done")
