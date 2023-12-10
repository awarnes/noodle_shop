class_name SelectionGroupData extends Resource

@export var title: String
@export var selection_items: Array[SelectionItemData]

func _init(group_title: String, group_selection_items: Array[SelectionItemData]):
	title = group_title
	selection_items = group_selection_items
