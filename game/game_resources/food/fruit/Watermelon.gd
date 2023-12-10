class_name Watermelon extends Food

func _init():
	title = "Watermelon"
	description = "Watery melon"
	icon = "res://icon.svg"
	
	type = FoodType.Fruit

	base_cost = 450

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 3

	preparation_methods = [
		PreparationChop.new()
	]

	base_quality = 1
