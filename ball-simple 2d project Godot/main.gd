extends Node2D

func _ready():
	# ตั้งค่าพื้น (floor) ที่มีอยู่แล้ว
	setup_floor()
	
	# สร้างลูกบอล
	create_ball()

func setup_floor():
	# เพิ่ม Shape ให้ CollisionShape2D
	var collision = $floor/CollisionShape2D
	var shape = RectangleShape2D.new()
	shape.size = Vector2(1000, 50)
	collision.shape = shape
	
	# ปรับตำแหน่งพื้น
	$floor.position = Vector2(576, 600)

func create_ball():
	var ball = RigidBody2D.new()
	ball.position = Vector2(576, 100)
	
	# สร้าง Collision
	var collision = CollisionShape2D.new()
	var shape = CircleShape2D.new()
	shape.radius = 40
	collision.shape = shape
	ball.add_child(collision)
	
	# สร้างวงกลมสีแดง
	var sprite = Polygon2D.new()
	var points = PackedVector2Array()
	for i in range(32):
		var angle = i * PI * 2 / 32
		points.append(Vector2(cos(angle), sin(angle)) * 40)
	sprite.polygon = points
	sprite.color = Color.RED
	ball.add_child(sprite)
	
	add_child(ball)
