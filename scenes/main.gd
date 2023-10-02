extends Node

var score: int = 0

func _process(_delta):    
    if Input.is_action_pressed("restart"):
        self.call_deferred("restart_game")


func update_score(add: int):
    score += add
    $hud.update_score(score)


func restart_game():
    get_tree().reload_current_scene()
