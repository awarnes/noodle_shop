class_name PlayerInventory extends Resource

@export var restaurant: BaseRestaurant

@export_category("Food")
@export var food: Array[Food]
@export var recipes: Array[Recipe]

@export_category("Kitchen")
@export var cooking_tools: Array[BaseCookingTool]
@export var prep_tools: Array[BasePrepTool]
@export var storage: Array[BaseStorage]

func has_tool_type(tool_type) -> bool:
	return cooking_tools.any(func(tool): tool.type == tool_type) or \
		prep_tools.any(func(tool): tool.type == tool_type)

