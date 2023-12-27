class_name SweetPea extends BaseVegetable

func _init():
	super()
	title = "Sweet Pea"
	description = "Delicious Sweet Pea"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Mushroom

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new()
	]

	base_quality = 1
