extends Area2D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "start"



func action() -> void:
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue_start)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	get_tree().change_scene_to_file("res://time_nexus.tscn")
