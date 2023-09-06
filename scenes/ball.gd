extends RigidBody2D


var velocity = Vector2.ZERO

func _ready():
    self.velocity = Vector2(500, 500)


func _physics_process(delta):
    var collision = move_and_collide(velocity * delta)
    if collision:
        collision.get_collider().call_deferred("take_damage")
        self.velocity = self.velocity.bounce(collision.get_normal())
    print(self.velocity)
