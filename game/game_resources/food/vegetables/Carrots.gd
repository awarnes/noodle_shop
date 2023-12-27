class_name Carrots extends BaseVegetable

func _init():
	super()
	title = "Carrots"
	description = "Delicious Carrots"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Starch
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
	]

	base_quality = 1
