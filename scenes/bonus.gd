extends RigidBody2D

@export
var score = 200

func _on_body_entered(body: Node):

    if body.is_in_group("bottom"):
        self.queue_free()
    elif body.is_in_group("launcher"):
        get_parent().update_score(score)
        self.queue_free()
