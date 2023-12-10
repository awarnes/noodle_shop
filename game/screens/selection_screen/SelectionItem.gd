extends Control

@onready var title: String
@onready var icon: Image
@onready var short_description: String

var item_title: Label
var item_icon: TextureRect
var item_description: Label

func _ready():
	item_title = get_node("MarginContainer/HBoxContainer/VBoxContainer/Title")
	item_title.text = title
	
	item_description = get_node("MarginContainer/HBoxContainer/VBoxContainer/ShortDescription")
	item_description.text = short_description
	
	item_icon = get_node("MarginContainer/HBoxContainer/MarginContainer/Icon")
	item_icon.texture = ImageTexture.create_from_image(icon)


func _on_pressed():
	var position = get_parent().get_children().find(self)
	prints("{title} {position}".format({"title": title, "position": position}))
