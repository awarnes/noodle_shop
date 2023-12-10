class_name BaseRestaurant extends Resource

@export var title: String
@export var description: String

enum RestaurantType {
	Cart,
	Building,
}
@export var type: RestaurantType

enum OwnershipType {
	Rent,
	Mortgage,
	Own,
}
@export var ownership: OwnershipType

# Some way to limit the max number of upgrades
@export var kitchen_size: int

@export var rent: int
