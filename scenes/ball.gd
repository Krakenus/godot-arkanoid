extends RigidBody2D


var velocity = Vector2.ZERO
var speed = 1


func _ready():
    self.velocity = Vector2(500, 500)


func _physics_process(delta):
    var collision = move_and_collide(velocity * delta * speed)
    if collision:
        var collider = collision.get_collider()
        if collider.is_in_group('bricks'):
            collider.call_deferred("take_damage")
        self.velocity = self.velocity.bounce(collision.get_normal())
