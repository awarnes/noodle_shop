class_name BaseStorage extends BaseKitchenObject

enum StorageType {
	Dry,
	Refrigerator,
	Freezer,
	Live,
}
@export var type: StorageType

# number of items that can be stored inside
@export var storage_size: int
