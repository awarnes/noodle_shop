class_name Garlic extends BaseVegetable

func _init():
	super()
	title = "Garlic"
	description = "Delicious Garlic"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Allium
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
