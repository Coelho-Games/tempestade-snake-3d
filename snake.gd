extends Area3D

@export var speed = 10
@export var box : CSGBox3D
@export var dot: Area3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction : Vector2 = Input.get_vector("ui_left", "ui_right","ui_down", "ui_up")
	position.x += direction.x * delta * speed
	position.y += direction.y * delta * speed
	position.x = clamp(position.x, -box.size.x/2, box.size.x/2)
	position.y = clamp(position.y, -box.size.y/2, box.size.y/2)


func _on_area_entered(area: Area3D) -> void:
	area.position = Vector3(0,-2,0)
