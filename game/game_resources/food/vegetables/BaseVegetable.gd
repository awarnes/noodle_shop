class_name BaseVegetable extends Food

enum VegetableSubType {
	Mushroom,
	Cabbage,
	Allium,
	Pepper,
	Starch,
	Herb
}

@export var sub_type: VegetableSubType

func _init():
	type = FoodType.Vegetable
