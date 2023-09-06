extends StaticBody2D

var damaged_texture = preload("res://assets/brick_steel_broken.png")


@export
var damaged = false


func take_damage():
    if damaged:
        self.queue_free()
    else:
        damaged = true
        $Sprite2D.set_texture(damaged_texture)
