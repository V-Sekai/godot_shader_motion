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
