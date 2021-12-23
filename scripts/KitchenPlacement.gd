extends Area

export (String) var target_name
export (PackedScene) var kitchen_scene
signal action_done
var is_entered = false


func _on_KitchenPlacement_body_entered(body):
	if not is_entered:
		if body.name == target_name:
			is_entered = true
			var kitch = kitchen_scene.instance()
			#kitch.mode = RigidBody.MODE_KINEMATIC
			#kitch.get_child(0).rotate_object_local(Vector3(0,1,0),-PI/2)
			get_parent().add_child(kitch)
			kitch.rotate_object_local(Vector3(0,1,0),-PI/2)
			kitch.scale = Vector3(3,4,5)
			kitch.translation = Vector3(14.5,0,0)
			emit_signal("action_done")
