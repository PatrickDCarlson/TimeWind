extends Node2D

@onready var area_2d: Area2D = $Area2D
@onready var shade_6: Node2D = $"."
@onready var shade_5: Node2D = $"../Shade_5"

func _ready() -> void:
	area_2d.area_entered.connect(_on_area_2d_area_entered)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if shade_5 == null:
		shade_6 = null
		queue_free()
	else:
		get_tree().change_scene_to_file("res://GameOver.tscn")
