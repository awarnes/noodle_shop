class_name SesameSeeds extends BaseCondiment

func _init():
	super()
	title = "Sesame Seeds"
	description = "Sesame Seed-y condiment"
	icon = "res://icon.svg"

	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	base_quality = 1
