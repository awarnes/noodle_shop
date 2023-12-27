class_name SoySauce extends BaseCondiment

func _init():
	super()
	title = "Soy Sauce"
	description = "Soy-y condiment"
	icon = "res://icon.svg"
	
	sub_type = CondimentSubType.Sauce

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	preparation_methods = []

	base_quality = 1
