extends Node

var current_scene = null
var current_scene_data = null

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)

func _process(_delta):
	if Input.is_action_pressed("game_quit"):
		get_tree().quit()

func goto_scene(path, scene_data = null):
	call_deferred("_deferred_goto_scene", path, scene_data)

func _deferred_goto_scene(path, scene_data = null):
	current_scene.free()
	prints("Going to load: "+path)
	var new_scene = ResourceLoader.load(path)
	
	current_scene = new_scene.instantiate()
	current_scene_data = scene_data
	
	get_tree().root.add_child(current_scene)
	
	# Optionally, to make it compatible with the SceneTree.change_scene_to_file() API.
	get_tree().current_scene = current_scene
