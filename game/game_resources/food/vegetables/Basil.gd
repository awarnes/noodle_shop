class_name Basil extends BaseVegetable

func _init():
	super()
	title = "Basil"
	description = "Delicious Basil"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Herb
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
