class_name EnokiMushrooms extends BaseVegetable

func _init():
	super()
	title = "Enoki Mushrooms"
	description = "Delicious Enoki Mushrooms"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Mushroom
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
	]

	base_quality = 1
