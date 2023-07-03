extends Node

# Not inspired on this one.
# This is just a set of random helpers
class_name GodotHelpers

const FLIP_X = Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1))
const INVALID_COLOR: Color = Color(NAN, NAN, NAN, NAN)


static func image_sample_center_pixel(image: Image) -> Color:
	var ret_color: Color = INVALID_COLOR
	if image == null:
		printerr("[GodotHelpers] [ShaderMotion Slot Analyzer] No image on your texture !")
		return ret_color

	if image.is_compressed():
		var err_code: int = image.decompress()
		if err_code != OK:
			printerr("[GodotHelpers] [image_center_color] Could not decompress image for sampling")
			return ret_color

	ret_color = image.get_pixelv(image.get_size() / 2)
	return ret_color


static func unity_rotation_to_godot(unity_rotation: Quaternion) -> Quaternion:
	return (FLIP_X.inverse() * Basis(unity_rotation) * FLIP_X).get_rotation_quaternion()

const invalid_vector: Vector3 = Vector3(NAN, NAN, NAN)
const invalid_quaternion: Quaternion = Quaternion(NAN, NAN, NAN, NAN)


static func float_array_to_vector3(array: PackedFloat64Array) -> Vector3:
	var ret: Vector3 = Vector3.ZERO
	var n_components: int = min(len(array), 3)
	for i in range(0, n_components):
		ret[i] = array[i]
	return ret


# FIXME Factorize
static func float32_array_to_vector3(array: PackedFloat32Array) -> Vector3:
	var ret: Vector3 = Vector3.ZERO
	var n_components: int = min(len(array), 3)
	for i in range(0, n_components):
		ret[i] = array[i]
	return ret


static func float_array_to_packed_vector3(array: PackedFloat64Array) -> PackedVector3Array:
	var i: int = 0
	var ret: PackedVector3Array = PackedVector3Array()
	while i < len(array):
		ret.append(float_array_to_vector3(array.slice(i, i + 3)))
		i += 3
	return ret


# FIXME Factorize
static func float32_array_to_packed_vector3(array: PackedFloat32Array) -> PackedVector3Array:
	var i: int = 0
	var ret: PackedVector3Array = PackedVector3Array()
	while i < len(array):
		ret.append(float32_array_to_vector3(array.slice(i, i + 3)))
		i += 3
	return ret


static func remove_children_from(node: Node):
	var node_children: Array = node.get_children()
	var current_index: int = len(node_children) - 1
	while current_index >= 0:
		var node_child = node_children[current_index]
		node_child.queue_free()
		#node.remove_child(node_child)
		current_index -= 1


static func stop_if_any_is_null(node: Node, variables_to_check: Array, readable_name: String) -> bool:
	var null_found: bool = false

	for variable in variables_to_check:
		null_found = (variable == null)
		if null_found:
			printerr("[%s] (%s) The component is not setup correctly. Disabling" % [readable_name, node.name])
			node.process_mode = Node.PROCESS_MODE_DISABLED
			break
	return null_found
