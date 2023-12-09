extends Control

var buttonGridContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	buttonGridContainer = get_node("MarginContainer/VBoxContainer/MarginContainer/ButtonGridContainer")
	var testButton = Button.new()
	testButton.text = 'Hello World!'
	buttonGridContainer.add_child(testButton)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
