class_name PlayerUpgrades extends Resource

@export_category("Kitchen")
@export var cooking_tools: Array[BaseCookingTool]
@export var prep_tools: Array[BasePrepTool]
@export var storage: Array[BaseStorage]

func has_tool_type(tool_type) -> bool:
	return cooking_tools.any(func(tool): tool.type == tool_type) or \
		prep_tools.any(func(tool): tool.type == tool_type)
