extends Control

@onready var planning_grid_container = get_node("MarginContainer/VBoxContainer/MarginContainer/PlanningGridContainer")
@onready var back_button = get_node("MarginContainer/VBoxContainer/HBoxContainer/BackButton")

var current_selection_container: GridContainer

func _on_food_button_pressed():
	var food_screen_data = FoodScreenData.new()
	Global.load_selection_screen(food_screen_data)

func _on_kitchen_button_pressed():
	prints("pressed button!")

func _on_options_button_pressed():
	var options_menu = get_node("OptionsMenu")
	options_menu.visible = true

func _on_back_button_pressed():
	planning_grid_container.visible = true
	current_selection_container.visible = false
	current_selection_container = null
	back_button.visible = false

func _on_restaurant_button_pressed():
	current_selection_container = get_node("MarginContainer/VBoxContainer/MarginContainer/RestaurantGridContainer")
	current_selection_container.visible = true
	planning_grid_container.visible = false
	back_button.visible = true

func _on_shopping_button_pressed():
	current_selection_container = get_node("MarginContainer/VBoxContainer/MarginContainer/ShoppingGridContainer")
	current_selection_container.visible = true
	planning_grid_container.visible = false
	back_button.visible = true

func _on_start_day_button_pressed():
	prints("PRESSED START DAY!!")
