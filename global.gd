extends Node

var current_scene = null
var selection_screen_data: BaseSelectionScreenData = null

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)

func _process(_delta):
	if Input.is_action_pressed("game_quit"):
		get_tree().quit()

func load_selection_screen(screen_data: BaseSelectionScreenData):
	call_deferred("_deferred_load_selection_screen", screen_data)
	
func _deferred_load_selection_screen(screen_data: BaseSelectionScreenData):
	current_scene.free()
	var new_selection_screen = ResourceLoader.load("res://game/screens/selection_screen/SelectionScreen.tscn").instantiate()
	
	new_selection_screen.screen_data = screen_data
	
	current_scene = new_selection_screen
	get_tree().root.add_child(current_scene)

func goto_scene(path):
	call_deferred("_deferred_goto_scene", path)

func _deferred_goto_scene(path):
	current_scene.free()
	var new_scene = ResourceLoader.load(path)
	
	current_scene = new_scene.instantiate()
	
	get_tree().root.add_child(current_scene)
