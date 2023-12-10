class_name PlayerInventory extends Resource

@export var restaurant: BaseRestaurant

@export_category("Food")
@export var food: Array[Food]
@export var recipes: Array[Recipe]

@export_category("Kitchen")
@export var cooking_tools: Array[BaseCookingTool]
@export var prep_tools: Array[BasePrepTool]
@export var storage: Array[BaseStorage]

