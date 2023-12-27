class_name YellowOnion extends BaseVegetable

func _init():
	super()
	title = "Yellow Onion"
	description = "Delicious Yellow Onion"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Allium
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new()
	]

	base_quality = 1
