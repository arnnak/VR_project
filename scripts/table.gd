extends RigidBody

export (PackedScene) var UI_scene
#signal action_done
var is_entered = false

func _ready():
	is_entered = false



func _on_table_mouse_entered():
	if not is_entered:
		is_entered = true
		var UI = UI_scene.instance()
		add_child(UI)
		#emit_signal("action_done")
