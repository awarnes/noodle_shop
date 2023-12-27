class_name BaseCondiment extends Food

enum CondimentSubType {
	Dry,
	Sauce,
	Citrus
}

@export var sub_type: CondimentSubType

func _init():
	type = FoodType.Condiment
