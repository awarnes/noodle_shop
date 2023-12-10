class_name SelectionItemData extends Resource

@export var title: String
@export var description: String
@export var icon: Image
@export var item: GameResource

func _init(game_item: GameResource):
	title = game_item.title
	description = game_item.description
	icon = Image.load_from_file(game_item.icon)
	item = game_item
