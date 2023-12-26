class_name ChowMeinNoodles extends Food

func _init():
	title = "Chow Mein Noodles"
	description = "Delicious Chow Mein Noodles"
	icon = "res://icon.svg"
	
	type = FoodType.Meat

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationBoil.new(),
		PreparationPanFry.new(),
	]

	base_quality = 1
