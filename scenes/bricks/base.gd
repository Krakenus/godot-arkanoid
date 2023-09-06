extends StaticBody2D


func _ready():
    self.add_to_group('bricks')


func take_damage():
    self.hide()
    self.queue_free()
