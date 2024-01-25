class_name Food extends GameResource

enum FoodType {
	Broth,
	Condiment,
	Fruit,
	Noodle,
	Protein,
	Sauce,
	Vegetable,
}
var type: FoodType

func get_food_name(food_type: FoodType):
	match food_type:
		FoodType.Broth:
			return "Broth"
		FoodType.Condiment:
			return "Condiments"
		FoodType.Fruit:
			return "Fruit"
		FoodType.Noodle:
			return "Noodles"
		FoodType.Protein:
			return "Protein"
		FoodType.Sauce:
			return "Sauces"
		FoodType.Vegetable:
			return "Vegetables"

var base_cost: int

var storage_method: BaseStorage.StorageType

var base_shelf_life: int
var age: int

var base_quality: int

func _init():
	resource_type = ResourceType.Food

func get_attributes_display() -> Array[Node]:
	var helper = Helpers.new()
	return [
		helper.create_label("Food Type: %s" % get_food_name(type)),
		helper.create_label("Base Cost: %s" % base_cost),
		helper.create_label("Base Quality: %s" % base_quality),
		helper.create_label("Base Shelf Life: %s" % base_shelf_life),
		helper.create_label("Storage Method: %s" % BaseStorage.new().get_tool_name(storage_method)),
	]

func calculate_cost():
	return base_cost + (1 * base_quality)

#func calculate_quality(prep_tool: BasePrepTool):
	#var quality = base_quality
	#for method in preparation_methods:
		#for tool in method.required_prep_tools:
			#quality += tool.quality_bonus
		#for tool in method.required_cooking_tools:
			#quality += tool.quality_bonus
	#return quality
