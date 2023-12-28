class_name CreminiMushrooms extends BaseVegetable

func _init():
	super()
	title = "Cremini Mushrooms"
	description = "Delicious Cremini Mushrooms"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Mushroom
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
