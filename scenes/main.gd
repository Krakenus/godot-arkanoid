extends Node


func _process(_delta):    
    if Input.is_action_pressed("restart"):
        get_tree().reload_current_scene()
