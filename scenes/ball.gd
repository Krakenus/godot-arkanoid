extends RigidBody2D

@export var speed = 100


func _ready():
    self.linear_velocity = Vector2(1, 1)


func _physics_process(delta):
    var collision = move_and_collide(self.linear_velocity * speed * delta)
    if collision:
        self.linear_velocity = self.linear_velocity.bounce(collision.get_normal())
