class_name BeanSprouts extends BaseVegetable

func _init():
	super()
	title = "Bean Sprouts"
	description = "Delicious fresh bean sprouts"
	icon = "res://icon.svg"
	
	sub_type = VegetableSubType.Herb
	
	base_cost = 500

	storage_method = BaseStorage.StorageType.Refrigerator

	base_shelf_life = 30

	base_quality = 1
