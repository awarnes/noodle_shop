class_name BasePrepTool extends BaseKitchenObject

enum PrepToolType {
	Knife,
	Peeler
}
@export var type: PrepToolType
@export var quality_bonus: int

func get_tool_name(tool_type: PrepToolType):
	match tool_type:
		PrepToolType.Knife:
			return "Knife"
		PrepToolType.Peeler:
			return "Peeler"
