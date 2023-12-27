class_name BaseCookingTool extends GameResource

enum CookingToolType {
	Oven,
	Stove,
	DeepFryer,
	Pan,
	Pot,
	Utensil,
}
@export var type: CookingToolType
@export var price: int

@export var quality_bonus: int
@export var speed_bonus: int

func get_tool_name(tool_type: CookingToolType):
	match tool_type:
		CookingToolType.Oven:
			return "Oven"
		CookingToolType.Stove:
			return "Stove"
		CookingToolType.DeepFryer:
			return "Deep Fryer"
		CookingToolType.Pan:
			return "Pan"
		CookingToolType.Pot:
			return "Pot"
		CookingToolType.Utensil:
			return "Utensil"

func get_attributes_display() -> Array[Node]:
	var helper = Helpers.new()
	return [
		helper.create_label("Price: %s" % price),
		helper.create_label("Tool Type: %s" % get_tool_name(type)),
		helper.create_label("Quality Bonus: %s" % quality_bonus),
		helper.create_label("Speed Bonus: %s" % speed_bonus)
	]
