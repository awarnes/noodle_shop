class_name Corn extends BaseVegetable

func _init():
	super()
	title = "Corn"
	description = "Delicious Corn"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Starch
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
