class_name FishSauce extends BaseCondiment

func _init():
	super()
	title = "Fish Sauce"
	description = "Fish-y condiment"
	icon = "res://icon.svg"
	
	sub_type = CondimentSubType.Sauce

	base_cost = 150

	storage_method = BaseStorage.StorageType.Dry

	base_shelf_life = 2

	preparation_methods = []

	base_quality = 1
