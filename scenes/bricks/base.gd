extends StaticBody2D
class_name BaseBrick

var bonus_scene: PackedScene
var bonus_probability: float = 0.8

@export
var score: int = 50

func _ready():
    self.add_to_group('bricks')
    self.bonus_scene = load('res://scenes/bonus.tscn')


func deploy_bonus():
    var bonus = bonus_scene.instantiate()
    bonus.position = self.position
    self.get_parent().add_child(bonus)


func take_damage():
    self.hide()
    self.queue_free()
    get_parent().update_score(score)
    if randf() > bonus_probability:
        deploy_bonus()
