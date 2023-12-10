extends Control

func _on_quit_button_pressed():
	get_tree().quit()


func _on_food_button_pressed():
	var food_screen_data = FoodScreenData.new()
	prints(food_screen_data.selection_items)
	Global.goto_scene(
		"res://game/screens/selection_screen/SelectionScreen.tscn",
		food_screen_data
	)

func _on_kitchen_button_pressed():
	prints("pressed button!")
	var boil = load("res://game/game_resources/food/preparations/PreparationBoil.gd")
	prints(boil)
	prints(boil.new().required_cooking_tools)
