class_name GameResource extends Resource

var title: String
var description: String
var icon: String

enum ResourceType {
	CookingTool,
	Food,
	MenuItem,
	PrepTool,
	Recipe,
	Storage,
}

var resource_type: ResourceType
