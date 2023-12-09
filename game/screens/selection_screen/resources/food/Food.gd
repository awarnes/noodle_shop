class_name Food extends Resource

enum FoodType {
	Noodle,
	Rice,
	Vegetable,
	Meat,
	Fruit,
	Broth,
	Condiment,
}

var title: String
var icon: Image
var description: String

var type: FoodType

var base_cost: int

var storage_method: BaseStorage.StorageType

var base_shelf_life: int
var current_shelf_life: int

var preparation_methods: Array[PreparationMethod]

var base_quality: int

func calculate_cost():
	return base_cost + (1 * base_quality)

func can_prepare():
	for method: PreparationMethod in preparation_methods:
		if not method.can_use():
			return false
	return true

func calculate_quality(prep_tool: BasePrepTool):
	return base_quality + prep_tool.quality_bonus

