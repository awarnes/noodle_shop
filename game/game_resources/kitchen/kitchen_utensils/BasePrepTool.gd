class_name BasePrepTool extends BaseKitchenObject

enum PrepToolType {
	Knife,
	Peeler
}

@export var type: PrepToolType
@export var quality_bonus: int
