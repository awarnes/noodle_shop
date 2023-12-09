class_name BaseCookingTool extends BaseKitchenObject

enum CookingToolType {
	Oven,
	Stove,
	DeepFryer,
	Pan,
	Pot,
	Spatula,
}

@export var type: CookingToolType
