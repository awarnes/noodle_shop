class_name Food extends GameResource

enum FoodType {
	Noodle,
	Vegetable,
	Meat,
	Fruit,
	Broth,
	Condiment,
}
var type: FoodType

var base_cost: int

var storage_method: BaseStorage.StorageType

var base_shelf_life: int
var current_shelf_life: int

var preparation_methods: Array[PreparationMethod]

var base_quality: int

func get_attributes_display() -> Array[Node]:
	var helper = Helpers.new()
	return [
		helper.create_label("Food Type: %s" % type),
		helper.create_label("Base Cost: %s" % base_cost),
		helper.create_label("Base Quality: %s" % base_quality),
		helper.create_label("Base Shelf Life: %s" % base_shelf_life),
		helper.create_label("Storage Method: %s" % BaseStorage.new().get_tool_name(storage_method)),
		
	]

func calculate_cost():
	return base_cost + (1 * base_quality)

func can_prepare():
	for method: PreparationMethod in preparation_methods:
		if not method.can_use():
			return false
	return true

#func calculate_quality(prep_tool: BasePrepTool):
	#var quality = base_quality
	#for method in preparation_methods:
		#for tool in method.required_prep_tools:
			#quality += tool.quality_bonus
		#for tool in method.required_cooking_tools:
			#quality += tool.quality_bonus
	#return quality

