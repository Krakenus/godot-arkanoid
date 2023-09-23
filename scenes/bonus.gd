extends RigidBody2D


func _on_body_entered(body: Node):
    if body.is_in_group("bottom"):
        self.queue_free()
