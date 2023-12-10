extends Food

func _init():
	title = "Beef Broth"
	description = "Delicious beef broth"
	type = FoodType.Broth

	base_cost = 200
	base_quality = 1

	storage_method = BaseStorage.StorageType.Refrigerator
	base_shelf_life = 30
	
	preparation_methods = [PreparationBoil.new()]
