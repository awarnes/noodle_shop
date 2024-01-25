class_name BaseStorage extends GameResource

enum StorageType {
	Dry,
	Refrigerator,
	Freezer,
	Live,
}
@export var type: StorageType
# number of items that can be stored inside
@export var storage_size: int

func _init():
	resource_type = ResourceType.Storage

func get_tool_name(tool_type: StorageType):
	match tool_type:
		StorageType.Dry:
			return "Dry"
		StorageType.Refrigerator:
			return "Refrigerator"
		StorageType.Freezer:
			return "Freezer"
		StorageType.Live:
			return "Live"
