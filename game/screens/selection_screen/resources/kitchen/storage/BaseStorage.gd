class_name BaseStorage extends BaseKitchenObject

enum StorageType {
	Dry,
	Refrigerator,
	Freezer,
	Live,
}

@export var type: StorageType
@export var storage_size: int
