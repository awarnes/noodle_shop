class_name BaseCookingTool extends BaseKitchenObject

enum CookingToolType {
	Oven,
	Stove,
	DeepFryer,
	Pan,
	Pot,
	Utensil,
}
@export var type: CookingToolType
@export var quality_bonus: int

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
