class_name OysterMushrooms extends BaseVegetable

func _init():
	super()
	title = "Oyster Mushrooms"
	description = "Delicious Oyster Mushrooms"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Mushroom

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
