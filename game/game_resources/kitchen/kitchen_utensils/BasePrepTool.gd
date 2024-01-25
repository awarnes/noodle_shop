class_name BasePrepTool extends GameResource

enum PrepToolType {
	CuttingBoard,
	Knife,
	Peeler,
	RiceCooker,
	Scale
}
@export var type: PrepToolType
@export var price: int

@export var quality_bonus: int
@export var speed_bonus: int

func _init():
	resource_type = ResourceType.PrepTool

func get_tool_name(tool_type: PrepToolType):
	match tool_type:
		PrepToolType.CuttingBoard:
			return "Cutting Board"
		PrepToolType.Knife:
			return "Knife"
		PrepToolType.Peeler:
			return "Peeler"
		PrepToolType.RiceCooker:
			return "Rice Cooker"
		PrepToolType.Scale:
			return "Scale"

func get_attributes_display() -> Array[Node]:
	var helper = Helpers.new()
	return [
		helper.create_label("Tool Type: %s" % get_tool_name(type)),
		helper.create_label("Quality Bonus: %s" % quality_bonus),
	]
