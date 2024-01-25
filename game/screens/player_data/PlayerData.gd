extends Control

@onready var name_label = get_node("PlayerDataContainer/NameLabel")
@onready var level_label = get_node("PlayerDataContainer/LevelLabel")
@onready var experience_label = get_node("PlayerDataContainer/ExperienceLabel")
@onready var money_label = get_node("PlayerDataContainer/MoneyLabel")

@onready var inventory = get_node("PlayerDataContainer/InventoryCollapsibleContainer/VBoxContainer")
@onready var upgrades = get_node("PlayerDataContainer/UpgradesCollapsibleContainer/VBoxContainer")

func _ready():
	name_label.text = Player.title
	level_label.text = "Level {level}".format({"level": Player.level})
	experience_label.text = "Experience {exp}/{next_exp}".format({
		"exp": Player.current_experience,
		"next_exp": Player.next_level_experience
	})
	money_label.text = "${money}".format({"money": Player.money})
