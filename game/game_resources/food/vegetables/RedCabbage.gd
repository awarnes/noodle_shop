class_name RedCabbage extends BaseVegetable

func _init():
	super()
	title = "Red Cabbage"
	description = "Delicious Red Cabbage"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Cabbage

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
