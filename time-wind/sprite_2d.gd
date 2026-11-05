extends Sprite2D

func _on_body_entered(_body):
	if Input.is_action_just_released("ui_accept"):
		get_tree().change_scene_to_file("res://time_nexus.tscn")
