extends MenuBar


# Called when the node enters the scene tree for the first time.
func _ready():
	print(self.get_menu_count())
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(self.is_menu_hidden(0))
