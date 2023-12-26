class_name Beef extends Food

func _init():
	title = "Beef"
	description = "Delicious Beef"
	icon = "res://icon.svg"
	
	type = FoodType.Meat

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new(),
	]

	base_quality = 1
