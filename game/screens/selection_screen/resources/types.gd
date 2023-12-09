class_name SelectionScreenTypes extends Resource

var title: String
var data: Array[SelectionGroup]

class SelectionGroup:
	var title: String
	var items: Array[SelectionItem]

enum SelectionItemType {
	FoodItem,
	KitchenItem
}

class SelectionItem:
	var title: String
	var level: int
	var active: bool
	var image: Image
	var type: SelectionItemType
	var data
