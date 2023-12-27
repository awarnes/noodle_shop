class_name Broccoli extends BaseVegetable

func _init():
	super()
	title = "Broccoli"
	description = "Delicious Broccoli"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Cabbage
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
	]

	base_quality = 1
