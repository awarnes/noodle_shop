extends Control

func _on_quit_button_pressed():
	get_tree().quit()


func _on_food_button_pressed():
	Global.goto_scene("res://game/selection_screen/FoodSelectionScreen.tscn")
