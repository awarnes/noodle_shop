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
