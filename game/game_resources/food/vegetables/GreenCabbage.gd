class_name GreenCabbage extends BaseVegetable

func _init():
	super()
	title = "Green Cabbage"
	description = "Delicious Green Cabbage"
	icon = "res://icon.svg"

	sub_type = VegetableSubType.Cabbage

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
