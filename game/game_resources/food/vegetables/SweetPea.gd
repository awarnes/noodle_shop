class_name SweetPea extends Food

func _init():
	title = "Sweet Pea"
	description = "Delicious Sweet Pea"
	icon = "res://icon.svg"
	
	type = FoodType.Vegetable

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new()
	]

	base_quality = 1
