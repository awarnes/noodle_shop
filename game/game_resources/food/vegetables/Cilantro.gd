class_name Cilantro extends BaseVegetable

func _init():
	super()
	title = "Cilantro"
	description = "Delicious Cilantro"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Herb
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
