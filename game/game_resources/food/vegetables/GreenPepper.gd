class_name GreenPepper extends BaseVegetable

func _init():
	super()
	title = "Green Pepper"
	description = "Delicious Green Pepper"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Pepper

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
