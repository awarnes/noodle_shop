extends PopupPanel

func _on_quit_button_pressed():
	get_tree().quit()

func _on_back_button_pressed():
	self.visible = false
