class_name Shrimp extends BaseMeat

func _init():
	title = "Shrimp"
	description = "Delicious Shrimp"
	icon = "res://icon.svg"

	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	preparation_methods = [
		PreparationChop.new(),
		PreparationPanFry.new(),
	]

	base_quality = 1
