class_name SoySauce extends BaseSauce

func _init():
	super()
	title = "Soy Sauce"
	description = "Soy-y condiment"
	icon = "res://icon.svg"

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	base_quality = 1
