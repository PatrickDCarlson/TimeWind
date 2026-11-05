extends StaticBody2D

func _on_body_entered():
	get_tree().change_scene_to_file("res://time_nexus.tscn")
