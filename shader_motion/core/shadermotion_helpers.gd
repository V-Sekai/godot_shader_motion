extends Control

class_name ShaderMotionHelpers

enum FrameBlock {
	HIPS_POSITION_HIGH,
	HIPS_POSITION_LOW,
	HIPS_SCALED_Y_AXIS,
	HIPS_SCALED_Z_AXIS,
	SPINE,
	CHEST,
	UPPER_CHEST,
	NECK,
	HEAD,
	LEFT_UPPER_LEG,
	RIGHT_UPPER_LEG,
	LEFT_LOWER_LEG,
	RIGHT_LOWER_LEG,
	LEFT_FOOT,
	RIGHT_FOOT,
	LEFT_SHOULDER,
	RIGHT_SHOULDER,
	LEFT_UPPER_ARM,
	RIGHT_UPPER_ARM,
	LEFT_LOWER_ARM,
	RIGHT_LOWER_ARM,
	LEFT_HAND,
	RIGHT_HAND,
	LEFT_TOES,
	RIGHT_TOES,
	LEFT_EYE,
	RIGHT_EYE,
	BLENDSHAPE_LIPSYNC,
	BLENDSHAPE_BLINK,
	BLENDSHAPE_EMOTION,
	LEFT_THUMB_PROXIMAL,
	LEFT_THUMB_INTERMEDIATE,
	LEFT_THUMB_DISTAL,
	LEFT_INDEX_PROXIMAL,
	LEFT_INDEX_INTERMEDIATE,
	LEFT_INDEX_DISTAL,
	LEFT_MIDDLE_PROXIMAL,
	LEFT_MIDDLE_INTERMEDIATE,
	LEFT_MIDDLE_DISTAL,
	LEFT_RING_PROXIMAL,
	LEFT_RING_INTERMEDIATE,
	LEFT_RING_DISTAL,
	LEFT_LITTLE_PROXIMAL,
	LEFT_LITTLE_INTERMEDIATE,
	LEFT_LITTLE_DISTAL,
	RIGHT_THUMB_PROXIMAL,
	RIGHT_THUMB_INTERMEDIATE,
	RIGHT_THUMB_DISTAL,
	RIGHT_INDEX_PROXIMAL,
	RIGHT_INDEX_INTERMEDIATE,
	RIGHT_INDEX_DISTAL,
	RIGHT_MIDDLE_PROXIMAL,
	RIGHT_MIDDLE_INTERMEDIATE,
	RIGHT_MIDDLE_DISTAL,
	RIGHT_RING_PROXIMAL,
	RIGHT_RING_INTERMEDIATE,
	RIGHT_RING_DISTAL,
	RIGHT_LITTLE_PROXIMAL,
	RIGHT_LITTLE_INTERMEDIATE,
	RIGHT_LITTLE_DISTAL,
	PRIVATE_USE
}

const block_tiles = {
	FrameBlock.HIPS_POSITION_HIGH: [0, 1, 2],
	FrameBlock.HIPS_POSITION_LOW: [3, 4, 5],
	FrameBlock.HIPS_SCALED_Y_AXIS: [6, 7, 8],
	FrameBlock.HIPS_SCALED_Z_AXIS: [9, 10, 11],
	FrameBlock.SPINE: [12, 13, 14],
	FrameBlock.CHEST: [15, 16, 17],
	FrameBlock.UPPER_CHEST: [18, 19, 20],
	FrameBlock.NECK: [21, 22, 23],
	FrameBlock.HEAD: [24, 25, 26],
	FrameBlock.LEFT_UPPER_LEG: [27, 28, 29],
	FrameBlock.RIGHT_UPPER_LEG: [30, 31, 32],
	FrameBlock.LEFT_LOWER_LEG: [33, 34, 35],
	FrameBlock.RIGHT_LOWER_LEG: [36, 37, 38],
	FrameBlock.LEFT_FOOT: [39, 40, 41],
	FrameBlock.RIGHT_FOOT: [42, 43, 44],
	FrameBlock.LEFT_SHOULDER: [45, 46, 47],
	FrameBlock.RIGHT_SHOULDER: [48, 49, 50],
	FrameBlock.LEFT_UPPER_ARM: [51, 52, 53],
	FrameBlock.RIGHT_UPPER_ARM: [54, 55, 56],
	FrameBlock.LEFT_LOWER_ARM: [57, 58, 59],
	FrameBlock.RIGHT_LOWER_ARM: [60, 61, 62],
	FrameBlock.LEFT_HAND: [63, 64, 65],
	FrameBlock.RIGHT_HAND: [66, 67, 68],
	FrameBlock.LEFT_TOES: [69],
	FrameBlock.RIGHT_TOES: [70],
	FrameBlock.LEFT_EYE: [71, 72],
	FrameBlock.RIGHT_EYE: [73, 74],
	FrameBlock.LEFT_THUMB_PROXIMAL: [90, 91],
	FrameBlock.LEFT_THUMB_INTERMEDIATE: [92],
	FrameBlock.LEFT_THUMB_DISTAL: [93],
	FrameBlock.LEFT_INDEX_PROXIMAL: [94, 95],
	FrameBlock.LEFT_INDEX_INTERMEDIATE: [96],
	FrameBlock.LEFT_INDEX_DISTAL: [97],
	FrameBlock.LEFT_MIDDLE_PROXIMAL: [98, 99],
	FrameBlock.LEFT_MIDDLE_INTERMEDIATE: [100],
	FrameBlock.LEFT_MIDDLE_DISTAL: [101],
	FrameBlock.LEFT_RING_PROXIMAL: [102, 103],
	FrameBlock.LEFT_RING_INTERMEDIATE: [104],
	FrameBlock.LEFT_RING_DISTAL: [105],
	FrameBlock.LEFT_LITTLE_PROXIMAL: [106, 107],
	FrameBlock.LEFT_LITTLE_INTERMEDIATE: [108],
	FrameBlock.LEFT_LITTLE_DISTAL: [109],
	FrameBlock.RIGHT_THUMB_PROXIMAL: [110, 111],
	FrameBlock.RIGHT_THUMB_INTERMEDIATE: [112],
	FrameBlock.RIGHT_THUMB_DISTAL: [113],
	FrameBlock.RIGHT_INDEX_PROXIMAL: [114, 115],
	FrameBlock.RIGHT_INDEX_INTERMEDIATE: [116],
	FrameBlock.RIGHT_INDEX_DISTAL: [117],
	FrameBlock.RIGHT_MIDDLE_PROXIMAL: [118, 119],
	FrameBlock.RIGHT_MIDDLE_INTERMEDIATE: [120],
	FrameBlock.RIGHT_MIDDLE_DISTAL: [121],
	FrameBlock.RIGHT_RING_PROXIMAL: [122, 123],
	FrameBlock.RIGHT_RING_INTERMEDIATE: [124],
	FrameBlock.RIGHT_RING_DISTAL: [125],
	FrameBlock.RIGHT_LITTLE_PROXIMAL: [126, 127],
	FrameBlock.RIGHT_LITTLE_INTERMEDIATE: [128],
	FrameBlock.RIGHT_LITTLE_DISTAL: [129],
	FrameBlock.BLENDSHAPE_LIPSYNC: [80, 81],
	FrameBlock.BLENDSHAPE_BLINK: [82, 83],
	FrameBlock.BLENDSHAPE_EMOTION: [88, 89],
	FrameBlock.PRIVATE_USE: [77, 78, 79, 84, 85, 86, 87, 130, 131, 132, 133, 134],
}

# Shameless copy of Unity HumanBodyBones
enum MecanimBodyBone
{
	# This is the Hips bone
	Hips = 0,

	# This is the Left Upper Leg bone
	LeftUpperLeg = 1,
	# This is the Right Upper Leg bone
	RightUpperLeg = 2,
	# This is the Left Knee bone
	LeftLowerLeg = 3,
	# This is the Right Knee bone
	RightLowerLeg = 4,
	# This is the Left Ankle bone
	LeftFoot = 5,
	# This is the Right Ankle bone
	RightFoot = 6,

	# This is the first Spine bone
	Spine = 7,
	# This is the Chest bone
	Chest = 8,

	Neck = 9,
	# This is the Head bone
	Head = 10,

	# This is the Left Shoulder bone
	LeftShoulder = 11,
	# This is the Right Shoulder bone
	RightShoulder = 12,
	# This is the Left Upper Arm bone
	LeftUpperArm = 13,
	# This is the Right Upper Arm bone
	RightUpperArm = 14,
	# This is the Left Elbow bone
	LeftLowerArm = 15,
	# This is the Right Elbow bone
	RightLowerArm = 16,
	# This is the Left Wrist bone
	LeftHand = 17,
	# This is the Right Wrist bone
	RightHand = 18,

	# This is the Left Toes bone
	LeftToes = 19,
	# This is the Right Toes bone
	RightToes = 20,

	# This is the Left Eye bone
	LeftEye = 21,
	# This is the Right Eye bone
	RightEye = 22,
	# This is the Jaw bone
	Jaw = 23,

	LeftThumbProximal = 24,
	LeftThumbIntermediate = 25,
	LeftThumbDistal = 26,

	LeftIndexProximal = 27,
	LeftIndexIntermediate = 28,
	LeftIndexDistal = 29,

	LeftMiddleProximal = 30,
	LeftMiddleIntermediate = 31,
	LeftMiddleDistal = 32,

	LeftRingProximal = 33,
	LeftRingIntermediate = 34,
	LeftRingDistal = 35,

	LeftLittleProximal = 36,
	LeftLittleIntermediate = 37,
	LeftLittleDistal = 38,

	RightThumbProximal = 39,
	RightThumbIntermediate = 40,
	RightThumbDistal = 41,

	RightIndexProximal = 42,
	RightIndexIntermediate = 43,
	RightIndexDistal = 44,

	RightMiddleProximal = 45,
	RightMiddleIntermediate = 46,
	RightMiddleDistal = 47,

	RightRingProximal = 48,
	RightRingIntermediate = 49,
	RightRingDistal = 50,

	RightLittleProximal = 51,
	RightLittleIntermediate = 52,
	RightLittleDistal = 53,
	UpperChest = 54,
	LastBone = 55
}

static func is_valid_mecanim_bone(
	bone:MecanimBodyBone
):
	return bone >= MecanimBodyBone.Hips and bone < MecanimBodyBone.LastBone

const mecanim_bone_tiles = {
	MecanimBodyBone.Hips: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
	MecanimBodyBone.LeftUpperLeg: [27, 28, 29],
	MecanimBodyBone.RightUpperLeg: [30, 31, 32],
	MecanimBodyBone.LeftLowerLeg: [33, 34, 35],
	MecanimBodyBone.RightLowerLeg: [36, 37, 38],
	MecanimBodyBone.LeftFoot: [39, 40, 41],
	MecanimBodyBone.RightFoot: [42, 43, 44],
	MecanimBodyBone.Spine: [12, 13, 14],
	MecanimBodyBone.Chest: [15, 16, 17],
	MecanimBodyBone.Neck: [21, 22, 23],
	MecanimBodyBone.Head: [24, 25, 26],
	MecanimBodyBone.LeftShoulder: [45, 46, 47],
	MecanimBodyBone.RightShoulder: [48, 49, 50],
	MecanimBodyBone.LeftUpperArm: [51, 52, 53],
	MecanimBodyBone.RightUpperArm: [54, 55, 56],
	MecanimBodyBone.LeftLowerArm: [57, 58, 59],
	MecanimBodyBone.RightLowerArm: [60, 61, 62],
	MecanimBodyBone.LeftHand: [63, 64, 65],
	MecanimBodyBone.RightHand: [66, 67, 68],
	MecanimBodyBone.LeftToes: [-1, -1, 69],
	MecanimBodyBone.RightToes: [-1, -1, 70],
	MecanimBodyBone.LeftEye: [-1, 71, 72],
	MecanimBodyBone.RightEye: [-1, 73, 74],
	MecanimBodyBone.LeftThumbProximal: [-1, 90, 91],
	MecanimBodyBone.LeftThumbIntermediate: [-1, -1, 92],
	MecanimBodyBone.LeftThumbDistal: [-1, -1, 93],
	MecanimBodyBone.LeftIndexProximal: [-1, 94, 95],
	MecanimBodyBone.LeftIndexIntermediate: [-1, -1, 96],
	MecanimBodyBone.LeftIndexDistal: [-1, -1, 97],
	MecanimBodyBone.LeftMiddleProximal: [-1, 98, 99],
	MecanimBodyBone.LeftMiddleIntermediate: [-1, -1, 100],
	MecanimBodyBone.LeftMiddleDistal: [-1, -1, 101],
	MecanimBodyBone.LeftRingProximal: [-1, 102, 103],
	MecanimBodyBone.LeftRingIntermediate: [-1, -1, 104],
	MecanimBodyBone.LeftRingDistal: [-1, -1, 105],
	MecanimBodyBone.LeftLittleProximal: [-1, 106, 107],
	MecanimBodyBone.LeftLittleIntermediate: [-1, -1, 108],
	MecanimBodyBone.LeftLittleDistal: [-1, -1, 109],
	MecanimBodyBone.RightThumbProximal: [-1, 110, 111],
	MecanimBodyBone.RightThumbIntermediate: [-1, -1, 112],
	MecanimBodyBone.RightThumbDistal: [-1, -1, 113],
	MecanimBodyBone.RightIndexProximal: [-1, 114, 115],
	MecanimBodyBone.RightIndexIntermediate: [-1, -1, 116],
	MecanimBodyBone.RightIndexDistal: [-1, -1, 117],
	MecanimBodyBone.RightMiddleProximal: [-1, 118, 119],
	MecanimBodyBone.RightMiddleIntermediate: [-1, -1, 120],
	MecanimBodyBone.RightMiddleDistal: [-1, -1, 121],
	MecanimBodyBone.RightRingProximal: [-1, 122, 123],
	MecanimBodyBone.RightRingIntermediate: [-1, -1, 124],
	MecanimBodyBone.RightRingDistal: [-1, -1, 125],
	MecanimBodyBone.RightLittleProximal: [-1, 126, 127],
	MecanimBodyBone.RightLittleIntermediate: [-1, -1, 128],
	MecanimBodyBone.RightLittleDistal: [-1, -1, 129],
	MecanimBodyBone.UpperChest: [18, 19, 20]
}

const AnimatorMuscleName = [
  "Spine Front-Back",
  "Spine Left-Right",
  "Spine Twist Left-Right",
  "Chest Front-Back",
  "Chest Left-Right",
  "Chest Twist Left-Right",
  "UpperChest Front-Back",
  "UpperChest Left-Right",
  "UpperChest Twist Left-Right",
  "Neck Nod Down-Up",
  "Neck Tilt Left-Right",
  "Neck Turn Left-Right",
  "Head Nod Down-Up",
  "Head Tilt Left-Right",
  "Head Turn Left-Right",
  "Left Eye Down-Up",
  "Left Eye In-Out",
  "Right Eye Down-Up",
  "Right Eye In-Out",
  "Jaw Close",
  "Jaw Left-Right",
  "Left Upper Leg Front-Back",
  "Left Upper Leg In-Out",
  "Left Upper Leg Twist In-Out",
  "Left Lower Leg Stretch",
  "Left Lower Leg Twist In-Out",
  "Left Foot Up-Down",
  "Left Foot Twist In-Out",
  "Left Toes Up-Down",
  "Right Upper Leg Front-Back",
  "Right Upper Leg In-Out",
  "Right Upper Leg Twist In-Out",
  "Right Lower Leg Stretch",
  "Right Lower Leg Twist In-Out",
  "Right Foot Up-Down",
  "Right Foot Twist In-Out",
  "Right Toes Up-Down",
  "Left Shoulder Down-Up",
  "Left Shoulder Front-Back",
  "Left Arm Down-Up",
  "Left Arm Front-Back",
  "Left Arm Twist In-Out",
  "Left Forearm Stretch",
  "Left Forearm Twist In-Out",
  "Left Hand Down-Up",
  "Left Hand In-Out",
  "Right Shoulder Down-Up",
  "Right Shoulder Front-Back",
  "Right Arm Down-Up",
  "Right Arm Front-Back",
  "Right Arm Twist In-Out",
  "Right Forearm Stretch",
  "Right Forearm Twist In-Out",
  "Right Hand Down-Up",
  "Right Hand In-Out",
  "LeftHand.Thumb.1 Stretched",
  "LeftHand.Thumb.Spread",
  "LeftHand.Thumb.2 Stretched",
  "LeftHand.Thumb.3 Stretched",
  "LeftHand.Index.1 Stretched",
  "LeftHand.Index.Spread",
  "LeftHand.Index.2 Stretched",
  "LeftHand.Index.3 Stretched",
  "LeftHand.Middle.1 Stretched",
  "LeftHand.Middle.Spread",
  "LeftHand.Middle.2 Stretched",
  "LeftHand.Middle.3 Stretched",
  "LeftHand.Ring.1 Stretched",
  "LeftHand.Ring.Spread",
  "LeftHand.Ring.2 Stretched",
  "LeftHand.Ring.3 Stretched",
  "LeftHand.Little.1 Stretched",
  "LeftHand.Little.Spread",
  "LeftHand.Little.2 Stretched",
  "LeftHand.Little.3 Stretched",
  "RightHand.Thumb.1 Stretched",
  "RightHand.Thumb.Spread",
  "RightHand.Thumb.2 Stretched",
  "RightHand.Thumb.3 Stretched",
  "RightHand.Index.1 Stretched",
  "RightHand.Index.Spread",
  "RightHand.Index.2 Stretched",
  "RightHand.Index.3 Stretched",
  "RightHand.Middle.1 Stretched",
  "RightHand.Middle.Spread",
  "RightHand.Middle.2 Stretched",
  "RightHand.Middle.3 Stretched",
  "RightHand.Ring.1 Stretched",
  "RightHand.Ring.Spread",
  "RightHand.Ring.2 Stretched",
  "RightHand.Ring.3 Stretched",
  "RightHand.Little.1 Stretched",
  "RightHand.Little.Spread",
  "RightHand.Little.2 Stretched",
  "RightHand.Little.3 Stretched",
];

enum MecanimMuscle {
	INVALID = -1,
	SPINE_FRONT_BACK = 0,
	SPINE_LEFT_RIGHT,
	SPINE_TWIST_LEFT_RIGHT,
	CHEST_FRONT_BACK,
	CHEST_LEFT_RIGHT,
	CHEST_TWIST_LEFT_RIGHT,
	UPPERCHEST_FRONT_BACK,
	UPPERCHEST_LEFT_RIGHT,
	UPPERCHEST_TWIST_LEFT_RIGHT,
	NECK_NOD_DOWN_UP,
	NECK_TILT_LEFT_RIGHT,
	NECK_TURN_LEFT_RIGHT,
	HEAD_NOD_DOWN_UP,
	HEAD_TILT_LEFT_RIGHT,
	HEAD_TURN_LEFT_RIGHT,
	LEFT_EYE_DOWN_UP,
	LEFT_EYE_IN_OUT,
	RIGHT_EYE_DOWN_UP,
	RIGHT_EYE_IN_OUT,
	JAW_CLOSE,
	JAW_LEFT_RIGHT,
	LEFT_UPPER_LEG_FRONT_BACK,
	LEFT_UPPER_LEG_IN_OUT,
	LEFT_UPPER_LEG_TWIST_IN_OUT,
	LEFT_LOWER_LEG_STRETCH,
	LEFT_LOWER_LEG_TWIST_IN_OUT,
	LEFT_FOOT_UP_DOWN,
	LEFT_FOOT_TWIST_IN_OUT,
	LEFT_TOES_UP_DOWN,
	RIGHT_UPPER_LEG_FRONT_BACK,
	RIGHT_UPPER_LEG_IN_OUT,
	RIGHT_UPPER_LEG_TWIST_IN_OUT,
	RIGHT_LOWER_LEG_STRETCH,
	RIGHT_LOWER_LEG_TWIST_IN_OUT,
	RIGHT_FOOT_UP_DOWN,
	RIGHT_FOOT_TWIST_IN_OUT,
	RIGHT_TOES_UP_DOWN,
	LEFT_SHOULDER_DOWN_UP,
	LEFT_SHOULDER_FRONT_BACK,
	LEFT_ARM_DOWN_UP,
	LEFT_ARM_FRONT_BACK,
	LEFT_ARM_TWIST_IN_OUT,
	LEFT_FOREARM_STRETCH,
	LEFT_FOREARM_TWIST_IN_OUT,
	LEFT_HAND_DOWN_UP,
	LEFT_HAND_IN_OUT,
	RIGHT_SHOULDER_DOWN_UP,
	RIGHT_SHOULDER_FRONT_BACK,
	RIGHT_ARM_DOWN_UP,
	RIGHT_ARM_FRONT_BACK,
	RIGHT_ARM_TWIST_IN_OUT,
	RIGHT_FOREARM_STRETCH,
	RIGHT_FOREARM_TWIST_IN_OUT,
	RIGHT_HAND_DOWN_UP,
	RIGHT_HAND_IN_OUT,
	LEFTHAND_THUMB_1_STRETCHED,
	LEFTHAND_THUMB_SPREAD,
	LEFTHAND_THUMB_2_STRETCHED,
	LEFTHAND_THUMB_3_STRETCHED,
	LEFTHAND_INDEX_1_STRETCHED,
	LEFTHAND_INDEX_SPREAD,
	LEFTHAND_INDEX_2_STRETCHED,
	LEFTHAND_INDEX_3_STRETCHED,
	LEFTHAND_MIDDLE_1_STRETCHED,
	LEFTHAND_MIDDLE_SPREAD,
	LEFTHAND_MIDDLE_2_STRETCHED,
	LEFTHAND_MIDDLE_3_STRETCHED,
	LEFTHAND_RING_1_STRETCHED,
	LEFTHAND_RING_SPREAD,
	LEFTHAND_RING_2_STRETCHED,
	LEFTHAND_RING_3_STRETCHED,
	LEFTHAND_LITTLE_1_STRETCHED,
	LEFTHAND_LITTLE_SPREAD,
	LEFTHAND_LITTLE_2_STRETCHED,
	LEFTHAND_LITTLE_3_STRETCHED,
	RIGHTHAND_THUMB_1_STRETCHED,
	RIGHTHAND_THUMB_SPREAD,
	RIGHTHAND_THUMB_2_STRETCHED,
	RIGHTHAND_THUMB_3_STRETCHED,
	RIGHTHAND_INDEX_1_STRETCHED,
	RIGHTHAND_INDEX_SPREAD,
	RIGHTHAND_INDEX_2_STRETCHED,
	RIGHTHAND_INDEX_3_STRETCHED,
	RIGHTHAND_MIDDLE_1_STRETCHED,
	RIGHTHAND_MIDDLE_SPREAD,
	RIGHTHAND_MIDDLE_2_STRETCHED,
	RIGHTHAND_MIDDLE_3_STRETCHED,
	RIGHTHAND_RING_1_STRETCHED,
	RIGHTHAND_RING_SPREAD,
	RIGHTHAND_RING_2_STRETCHED,
	RIGHTHAND_RING_3_STRETCHED,
	RIGHTHAND_LITTLE_1_STRETCHED,
	RIGHTHAND_LITTLE_SPREAD,
	RIGHTHAND_LITTLE_2_STRETCHED,
	RIGHTHAND_LITTLE_3_STRETCHED,
	COUNT
}

enum MuscleMinMax
{
	MIN,
	MAX
}

const mecanim_muscle_limits = {
	MecanimMuscle.SPINE_FRONT_BACK: [-40, 40],
	MecanimMuscle.SPINE_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.SPINE_TWIST_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.CHEST_FRONT_BACK: [-40, 40],
	MecanimMuscle.CHEST_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.CHEST_TWIST_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.UPPERCHEST_FRONT_BACK: [-20, 20],
	MecanimMuscle.UPPERCHEST_LEFT_RIGHT: [-20, 20],
	MecanimMuscle.UPPERCHEST_TWIST_LEFT_RIGHT: [-20, 20],
	MecanimMuscle.NECK_NOD_DOWN_UP: [-40, 40],
	MecanimMuscle.NECK_TILT_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.NECK_TURN_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.HEAD_NOD_DOWN_UP: [-40, 40],
	MecanimMuscle.HEAD_TILT_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.HEAD_TURN_LEFT_RIGHT: [-40, 40],
	MecanimMuscle.LEFT_EYE_DOWN_UP: [-10, 15],
	MecanimMuscle.LEFT_EYE_IN_OUT: [-20, 20],
	MecanimMuscle.RIGHT_EYE_DOWN_UP: [-10, 15],
	MecanimMuscle.RIGHT_EYE_IN_OUT: [-20, 20],
	MecanimMuscle.JAW_CLOSE: [-10, 10],
	MecanimMuscle.JAW_LEFT_RIGHT: [-10, 10],
	MecanimMuscle.LEFT_UPPER_LEG_FRONT_BACK: [-90, 50],
	MecanimMuscle.LEFT_UPPER_LEG_IN_OUT: [-60, 60],
	MecanimMuscle.LEFT_UPPER_LEG_TWIST_IN_OUT: [-60, 60],
	MecanimMuscle.LEFT_LOWER_LEG_STRETCH: [-80, 80],
	MecanimMuscle.LEFT_LOWER_LEG_TWIST_IN_OUT: [-90, 90],
	MecanimMuscle.LEFT_FOOT_UP_DOWN: [-50, 50],
	MecanimMuscle.LEFT_FOOT_TWIST_IN_OUT: [-30, 30],
	MecanimMuscle.LEFT_TOES_UP_DOWN: [-50, 50],
	MecanimMuscle.RIGHT_UPPER_LEG_FRONT_BACK: [-90, 50],
	MecanimMuscle.RIGHT_UPPER_LEG_IN_OUT: [-60, 60],
	MecanimMuscle.RIGHT_UPPER_LEG_TWIST_IN_OUT: [-60, 60],
	MecanimMuscle.RIGHT_LOWER_LEG_STRETCH: [-80, 80],
	MecanimMuscle.RIGHT_LOWER_LEG_TWIST_IN_OUT: [-90, 90],
	MecanimMuscle.RIGHT_FOOT_UP_DOWN: [-50, 50],
	MecanimMuscle.RIGHT_FOOT_TWIST_IN_OUT: [-30, 30],
	MecanimMuscle.RIGHT_TOES_UP_DOWN: [-50, 50],
	MecanimMuscle.LEFT_SHOULDER_DOWN_UP: [-15, 30],
	MecanimMuscle.LEFT_SHOULDER_FRONT_BACK: [-15, 15],
	MecanimMuscle.LEFT_ARM_DOWN_UP: [-60, 100],
	MecanimMuscle.LEFT_ARM_FRONT_BACK: [-100, 100],
	MecanimMuscle.LEFT_ARM_TWIST_IN_OUT: [-90, 90],
	MecanimMuscle.LEFT_FOREARM_STRETCH: [-80, 80],
	MecanimMuscle.LEFT_FOREARM_TWIST_IN_OUT: [-90, 90],
	MecanimMuscle.LEFT_HAND_DOWN_UP: [-80, 80],
	MecanimMuscle.LEFT_HAND_IN_OUT: [-40, 40],
	MecanimMuscle.RIGHT_SHOULDER_DOWN_UP: [-15, 30],
	MecanimMuscle.RIGHT_SHOULDER_FRONT_BACK: [-15, 15],
	MecanimMuscle.RIGHT_ARM_DOWN_UP: [-60, 100],
	MecanimMuscle.RIGHT_ARM_FRONT_BACK: [-100, 100],
	MecanimMuscle.RIGHT_ARM_TWIST_IN_OUT: [-90, 90],
	MecanimMuscle.RIGHT_FOREARM_STRETCH: [-80, 80],
	MecanimMuscle.RIGHT_FOREARM_TWIST_IN_OUT: [-90, 90],
	MecanimMuscle.RIGHT_HAND_DOWN_UP: [-80, 80],
	MecanimMuscle.RIGHT_HAND_IN_OUT: [-40, 40],
	MecanimMuscle.LEFTHAND_THUMB_1_STRETCHED: [-20, 20],
	MecanimMuscle.LEFTHAND_THUMB_SPREAD: [-25, 25],
	MecanimMuscle.LEFTHAND_THUMB_2_STRETCHED: [-40, 35],
	MecanimMuscle.LEFTHAND_THUMB_3_STRETCHED: [-40, 35],
	MecanimMuscle.LEFTHAND_INDEX_1_STRETCHED: [-50, 50],
	MecanimMuscle.LEFTHAND_INDEX_SPREAD: [-20, 20],
	MecanimMuscle.LEFTHAND_INDEX_2_STRETCHED: [-45, 45],
	MecanimMuscle.LEFTHAND_INDEX_3_STRETCHED: [-45, 45],
	MecanimMuscle.LEFTHAND_MIDDLE_1_STRETCHED: [-50, 50],
	MecanimMuscle.LEFTHAND_MIDDLE_SPREAD: [-7.5, 7.5],
	MecanimMuscle.LEFTHAND_MIDDLE_2_STRETCHED: [-45, 45],
	MecanimMuscle.LEFTHAND_MIDDLE_3_STRETCHED: [-45, 45],
	MecanimMuscle.LEFTHAND_RING_1_STRETCHED: [-50, 50],
	MecanimMuscle.LEFTHAND_RING_SPREAD: [-7.5, 7.5],
	MecanimMuscle.LEFTHAND_RING_2_STRETCHED: [-45, 45],
	MecanimMuscle.LEFTHAND_RING_3_STRETCHED: [-45, 45],
	MecanimMuscle.LEFTHAND_LITTLE_1_STRETCHED: [-50, 50],
	MecanimMuscle.LEFTHAND_LITTLE_SPREAD: [-20, 20],
	MecanimMuscle.LEFTHAND_LITTLE_2_STRETCHED: [-45, 45],
	MecanimMuscle.LEFTHAND_LITTLE_3_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_THUMB_1_STRETCHED: [-20, 20],
	MecanimMuscle.RIGHTHAND_THUMB_SPREAD: [-25, 25],
	MecanimMuscle.RIGHTHAND_THUMB_2_STRETCHED: [-40, 35],
	MecanimMuscle.RIGHTHAND_THUMB_3_STRETCHED: [-40, 35],
	MecanimMuscle.RIGHTHAND_INDEX_1_STRETCHED: [-50, 50],
	MecanimMuscle.RIGHTHAND_INDEX_SPREAD: [-20, 20],
	MecanimMuscle.RIGHTHAND_INDEX_2_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_INDEX_3_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_MIDDLE_1_STRETCHED: [-50, 50],
	MecanimMuscle.RIGHTHAND_MIDDLE_SPREAD: [-7.5, 7.5],
	MecanimMuscle.RIGHTHAND_MIDDLE_2_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_MIDDLE_3_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_RING_1_STRETCHED: [-50, 50],
	MecanimMuscle.RIGHTHAND_RING_SPREAD: [-7.5, 7.5],
	MecanimMuscle.RIGHTHAND_RING_2_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_RING_3_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_LITTLE_1_STRETCHED: [-50, 50],
	MecanimMuscle.RIGHTHAND_LITTLE_SPREAD: [-20, 20],
	MecanimMuscle.RIGHTHAND_LITTLE_2_STRETCHED: [-45, 45],
	MecanimMuscle.RIGHTHAND_LITTLE_3_STRETCHED: [-45, 45]
}

# Three values for 3 degrees of freedom
# Coming from Unity "MuscleFromBone(MecanimBodyBone, dofIndex)"
# Index 0 : X-Axis
# Index 1 : Y-Axis
# Index 2 : Z-Axis
const mecanim_bone_muscles = {
	MecanimBodyBone.Hips: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
	],
	MecanimBodyBone.LeftUpperLeg: [
		[MecanimMuscle.LEFT_UPPER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_UPPER_LEG_IN_OUT, 1],
		[MecanimMuscle.LEFT_UPPER_LEG_FRONT_BACK, 1],
	],
	MecanimBodyBone.RightUpperLeg: [
		[MecanimMuscle.RIGHT_UPPER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_UPPER_LEG_IN_OUT, 1],
		[MecanimMuscle.RIGHT_UPPER_LEG_FRONT_BACK, 1],
	],
	MecanimBodyBone.LeftLowerLeg: [
		[MecanimMuscle.LEFT_LOWER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_UPPER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_LOWER_LEG_STRETCH, 1],
	],
	MecanimBodyBone.RightLowerLeg: [
		[MecanimMuscle.RIGHT_LOWER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_UPPER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_LOWER_LEG_STRETCH, 1],
	],
	MecanimBodyBone.LeftFoot: [
		[MecanimMuscle.LEFT_LOWER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_FOOT_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_FOOT_UP_DOWN, 1],
	],
	MecanimBodyBone.RightFoot: [
		[MecanimMuscle.RIGHT_LOWER_LEG_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_FOOT_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_FOOT_UP_DOWN, 1],
	],
	MecanimBodyBone.Spine: [
		[MecanimMuscle.SPINE_TWIST_LEFT_RIGHT, 1],
		[MecanimMuscle.SPINE_LEFT_RIGHT, 1],
		[MecanimMuscle.SPINE_FRONT_BACK, 1],
	],
	MecanimBodyBone.Chest: [
		[MecanimMuscle.CHEST_TWIST_LEFT_RIGHT, 1],
		[MecanimMuscle.CHEST_LEFT_RIGHT, 1],
		[MecanimMuscle.CHEST_FRONT_BACK, 1],
	],
	MecanimBodyBone.Neck: [
		[MecanimMuscle.NECK_TURN_LEFT_RIGHT, 1],
		[MecanimMuscle.NECK_TILT_LEFT_RIGHT, 1],
		[MecanimMuscle.NECK_NOD_DOWN_UP, 1],
	],
	MecanimBodyBone.Head: [
		[MecanimMuscle.HEAD_TURN_LEFT_RIGHT, 1],
		[MecanimMuscle.HEAD_TILT_LEFT_RIGHT, 1],
		[MecanimMuscle.HEAD_NOD_DOWN_UP, 1],
	],
	MecanimBodyBone.LeftShoulder: [
		[MecanimMuscle.LEFT_ARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_SHOULDER_FRONT_BACK, 1],
		[MecanimMuscle.LEFT_SHOULDER_DOWN_UP, 1],
	],
	MecanimBodyBone.RightShoulder: [
		[MecanimMuscle.RIGHT_ARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_SHOULDER_FRONT_BACK, 1],
		[MecanimMuscle.RIGHT_SHOULDER_DOWN_UP, 1],
	],
	MecanimBodyBone.LeftUpperArm: [
		[MecanimMuscle.LEFT_ARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_ARM_FRONT_BACK, 1],
		[MecanimMuscle.LEFT_ARM_DOWN_UP, 1],
	],
	MecanimBodyBone.RightUpperArm: [
		[MecanimMuscle.RIGHT_ARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_ARM_FRONT_BACK, 1],
		[MecanimMuscle.RIGHT_ARM_DOWN_UP, 1],
	],
	MecanimBodyBone.LeftLowerArm: [
		[MecanimMuscle.LEFT_FOREARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_ARM_TWIST_IN_OUT, -1],
		[MecanimMuscle.LEFT_FOREARM_STRETCH, 1],
	],
	MecanimBodyBone.RightLowerArm: [
		[MecanimMuscle.RIGHT_FOREARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_ARM_TWIST_IN_OUT, -1],
		[MecanimMuscle.RIGHT_FOREARM_STRETCH, 1],
	],
	MecanimBodyBone.LeftHand: [
		[MecanimMuscle.LEFT_FOREARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_HAND_IN_OUT, 1],
		[MecanimMuscle.LEFT_HAND_DOWN_UP, 1],
	],
	MecanimBodyBone.RightHand: [
		[MecanimMuscle.RIGHT_FOREARM_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_HAND_IN_OUT, 1],
		[MecanimMuscle.RIGHT_HAND_DOWN_UP, 1],
	],
	MecanimBodyBone.LeftToes: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFT_FOOT_TWIST_IN_OUT, 1],
		[MecanimMuscle.LEFT_TOES_UP_DOWN, 1],
	],
	MecanimBodyBone.RightToes: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHT_FOOT_TWIST_IN_OUT, 1],
		[MecanimMuscle.RIGHT_TOES_UP_DOWN, 1],
	],
	MecanimBodyBone.LeftEye: [
		[MecanimMuscle.HEAD_TURN_LEFT_RIGHT, 1],
		[MecanimMuscle.LEFT_EYE_IN_OUT, 1],
		[MecanimMuscle.LEFT_EYE_DOWN_UP, 1],
	],
	MecanimBodyBone.RightEye: [
		[MecanimMuscle.HEAD_TURN_LEFT_RIGHT, 1],
		[MecanimMuscle.RIGHT_EYE_IN_OUT, 1],
		[MecanimMuscle.RIGHT_EYE_DOWN_UP, 1],
	],
	MecanimBodyBone.Jaw: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.JAW_LEFT_RIGHT, 1],
		[MecanimMuscle.JAW_CLOSE, 1],
	],
	MecanimBodyBone.LeftThumbProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_THUMB_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_THUMB_1_STRETCHED, 1],
	],
	MecanimBodyBone.LeftThumbIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_THUMB_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_THUMB_2_STRETCHED, 1],
	],
	MecanimBodyBone.LeftThumbDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_THUMB_3_STRETCHED, 1],
	],
	MecanimBodyBone.LeftIndexProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_INDEX_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_INDEX_1_STRETCHED, 1],
	],
	MecanimBodyBone.LeftIndexIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_INDEX_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_INDEX_2_STRETCHED, 1],
	],
	MecanimBodyBone.LeftIndexDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_INDEX_3_STRETCHED, 1],
	],
	MecanimBodyBone.LeftMiddleProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_MIDDLE_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_MIDDLE_1_STRETCHED, 1],
	],
	MecanimBodyBone.LeftMiddleIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_MIDDLE_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_MIDDLE_2_STRETCHED, 1],
	],
	MecanimBodyBone.LeftMiddleDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_MIDDLE_3_STRETCHED, 1],
	],
	MecanimBodyBone.LeftRingProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_RING_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_RING_1_STRETCHED, 1],
	],
	MecanimBodyBone.LeftRingIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_RING_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_RING_2_STRETCHED, 1],
	],
	MecanimBodyBone.LeftRingDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_RING_3_STRETCHED, 1],
	],
	MecanimBodyBone.LeftLittleProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_LITTLE_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_LITTLE_1_STRETCHED, 1],
	],
	MecanimBodyBone.LeftLittleIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_LITTLE_SPREAD, 1],
		[MecanimMuscle.LEFTHAND_LITTLE_2_STRETCHED, 1],
	],
	MecanimBodyBone.LeftLittleDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.LEFTHAND_LITTLE_3_STRETCHED, 1],
	],
	MecanimBodyBone.RightThumbProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_THUMB_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_THUMB_1_STRETCHED, 1],
	],
	MecanimBodyBone.RightThumbIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_THUMB_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_THUMB_2_STRETCHED, 1],
	],
	MecanimBodyBone.RightThumbDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_THUMB_3_STRETCHED, 1],
	],
	MecanimBodyBone.RightIndexProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_INDEX_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_INDEX_1_STRETCHED, 1],
	],
	MecanimBodyBone.RightIndexIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_INDEX_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_INDEX_2_STRETCHED, 1],
	],
	MecanimBodyBone.RightIndexDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_INDEX_3_STRETCHED, 1],
	],
	MecanimBodyBone.RightMiddleProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_MIDDLE_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_MIDDLE_1_STRETCHED, 1],
	],
	MecanimBodyBone.RightMiddleIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_MIDDLE_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_MIDDLE_2_STRETCHED, 1],
	],
	MecanimBodyBone.RightMiddleDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_MIDDLE_3_STRETCHED, 1],
	],
	MecanimBodyBone.RightRingProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_RING_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_RING_1_STRETCHED, 1],
	],
	MecanimBodyBone.RightRingIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_RING_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_RING_2_STRETCHED, 1],
	],
	MecanimBodyBone.RightRingDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_RING_3_STRETCHED, 1],
	],
	MecanimBodyBone.RightLittleProximal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_LITTLE_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_LITTLE_1_STRETCHED, 1],
	],
	MecanimBodyBone.RightLittleIntermediate: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_LITTLE_SPREAD, 1],
		[MecanimMuscle.RIGHTHAND_LITTLE_2_STRETCHED, 1],
	],
	MecanimBodyBone.RightLittleDistal: [
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.INVALID, 1],
		[MecanimMuscle.RIGHTHAND_LITTLE_3_STRETCHED, 1],
	],
	MecanimBodyBone.UpperChest: [
		[MecanimMuscle.UPPERCHEST_TWIST_LEFT_RIGHT, 1],
		[MecanimMuscle.UPPERCHEST_LEFT_RIGHT, 1],
		[MecanimMuscle.UPPERCHEST_FRONT_BACK, 1],
	],
}

# This is just a random data dump from Unity.
# These values might be extremely tied to the specific model
# avatar Rig that was loaded in Unity.
static func get_human_axes() -> Dictionary:
	return {
#	hips is a bit special.
#	but hips has
#	bone.rotation * postQ == rotationMatrix * preQ
#
#	Normally.
#	bone.localRotation * postQ == preQ * SwingTwist(sign * degrees)
#
#	https://gitlab.com/lox9973/ShaderMotion/-/blob/master/Script/Common/HumanAxes.cs#L12
#	https://gitlab.com/lox9973/ShaderMotion/-/blob/master/Script/Common/Skeleton.cs#L43
#
# Post is bone roll orientation# Pre is converting to bicycle pose
	MecanimBodyBone.Hips: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, 1)
	},
	MecanimBodyBone.LeftUpperLeg: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, -1, 0), Vector3(0, 0, 1)),
		"limit_sign": Vector3(1, 1, 1)
	},
	MecanimBodyBone.RightUpperLeg: {
		"pre_rotation": Basis(),
		"post_rotation":  Basis(Vector3(-1, 0, 0), Vector3(0, -1, 0), Vector3(0, 0, 1)),
		"limit_sign": Vector3(-1, -1, 1)
	},
	MecanimBodyBone.LeftLowerLeg: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1)),
		"limit_sign": Vector3(1, -1, -1)
	},
	MecanimBodyBone.RightLowerLeg: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1)),
		"limit_sign": Vector3(-1, 1, -1)
	},
	MecanimBodyBone.LeftFoot: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 0, -1), Vector3(0, -1, 0)),
		"limit_sign": Vector3(1, 1, 1)
	},
	MecanimBodyBone.RightFoot: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 0, -1), Vector3(0, -1, 0)),
		"limit_sign": Vector3(-1, -1, 1)
	},
	MecanimBodyBone.Spine: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, 1)
	},	
	MecanimBodyBone.Chest: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, 1)
	},
	MecanimBodyBone.Neck: {
		"pre_rotation": Basis(),
		"post_rotation":  Basis(),
		"limit_sign": Vector3(1, 1, 1)
	},
	MecanimBodyBone.Head: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, 1)
	},
	MecanimBodyBone.LeftShoulder: {
		"pre_rotation": Basis(),
		"post_rotation":  Basis(Vector3(0, 1, 0), Vector3(0, 0, 1), Vector3(1, 0, 0)),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.RightShoulder: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(0, -1, 0), Vector3(0, 0, 1), Vector3(-1, 0, 0)),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.LeftUpperArm: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1)),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.RightUpperArm: {
		"pre_rotation": Basis(),
		"post_rotation":  Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1)),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.LeftLowerArm: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(0, 0, -1), Vector3(0, 1, 0), Vector3(1, 0, 0)),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.RightLowerArm: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(0, 0, 1), Vector3(0, 1, 0), Vector3(-1, 0, 0)),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.LeftHand: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(0, 0, 1), Vector3(0, 1, 0), Vector3(-1, 0, 0)),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.RightHand: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(0, 0, -1), Vector3(0, 1, 0), Vector3(1, 0, 0)),
		"limit_sign": Vector3(-1, 1, 1)
	},	
	MecanimBodyBone.LeftToes: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1)),
		"limit_sign": Vector3(1, 1, 1)
	},	
	MecanimBodyBone.RightToes: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 1, 0), Vector3(0, 0, -1)),
		"limit_sign": Vector3(-1, -1, 1)
	},	
	MecanimBodyBone.LeftEye: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(1, 0, 0), Vector3(0, 0, -1), Vector3(0, 1, 0)),
		"limit_sign": Vector3(-1, 1, -1)
	},
	MecanimBodyBone.RightEye: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(1, 0, 0), Vector3(0, -1, 0), Vector3(0, 1, 0)),
		"limit_sign": Vector3(1, -1, -1)
	},	
	MecanimBodyBone.Jaw: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(-1, 0, 0), Vector3(0, 0, 1), Vector3(0, 1, 0)),
		"limit_sign": Vector3(1, 1, 1)
	},	
	MecanimBodyBone.LeftThumbProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(0, -0.577, 0.816), Vector3(0, 0.816, 0.577), Vector3(-1, 0, 0)),
		"limit_sign": Vector3(1, -1, 1)
	},
	MecanimBodyBone.LeftThumbIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},	
	MecanimBodyBone.LeftThumbDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},	
	MecanimBodyBone.LeftIndexProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},	
	MecanimBodyBone.LeftIndexIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},	
	MecanimBodyBone.LeftIndexDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},	
	MecanimBodyBone.LeftMiddleProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},
	MecanimBodyBone.LeftMiddleIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},

	MecanimBodyBone.LeftMiddleDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},
	MecanimBodyBone.LeftRingProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.LeftRingIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.LeftRingDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.LeftLittleIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.LeftLittleDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.LeftLittleProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, -1)
	},
	MecanimBodyBone.RightThumbProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(Vector3(0, 0.577, -0.816), Vector3(0, 0.816, 0.577), Vector3(1, 0, 0)),
		"limit_sign": Vector3(-1, -1, -1)
	},
	MecanimBodyBone.RightThumbIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},
	MecanimBodyBone.RightThumbDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, -1, -1)
	},
	MecanimBodyBone.RightIndexProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},
	MecanimBodyBone.RightIndexIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},
	MecanimBodyBone.RightIndexDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},
	MecanimBodyBone.RightMiddleProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},
	MecanimBodyBone.RightMiddleIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},
	MecanimBodyBone.RightMiddleDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, -1, 1)
	},
	MecanimBodyBone.RightRingProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.RightRingIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.RightRingDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.RightLittleProximal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.RightLittleIntermediate: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.RightLittleDistal: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(-1, 1, 1)
	},
	MecanimBodyBone.UpperChest: {
		"pre_rotation": Basis(),
		"post_rotation": Basis(),
		"limit_sign": Vector3(1, 1, 1)
	}
}

# Bone - Scale
const spread_mass_q = [
	[MecanimBodyBone.Spine, Vector3(20, -30, -30)],
	[MecanimBodyBone.Chest, Vector3(20, -20, -20)],
	[MecanimBodyBone.UpperChest, Vector3(10, -10, -10)]
]

func _strings_to_enum_names(strings:PackedStringArray) -> PackedStringArray:
	var names:PackedStringArray = PackedStringArray()
	var regex = RegEx.new()
	var ret:int = regex.compile("[ \\._-]")
	if ret != OK:
		printerr("[ShaderMotionHelpers] Could not compile Regex : %d" % ret)
		return names

	for i in range(0, len(strings)):
		var name_to_convert = strings[i]
		names.append(regex.sub(name_to_convert, "_", true).to_upper())
	return names

enum MuscleAxis {
	X,
	Y,
	Z
}

class HumanBodyPose:
	var muscles:PackedFloat64Array = PackedFloat64Array()
	var body_position:Vector3 = Vector3.ZERO
	var body_rotation:Quaternion = Quaternion.IDENTITY

# ???
static func swing_twist(euler_angles:Vector3) -> Quaternion:
	var only_yz = Vector3(0, euler_angles.y, euler_angles.z)
	# ... Magic values, magic operations leading to magic data...
	return (
		Quaternion(only_yz.normalized(), deg_to_rad(only_yz.length()))
		* Quaternion(Vector3(1,0,0), deg_to_rad(euler_angles.x)))

static func _muscle_from_bone(
	mecanim_bone:MecanimBodyBone,
	muscle_axis:MuscleAxis
) -> float:
	# FIXME
	# Improves the readability here.
	# The latest 0 retrieves the associated muscle.
	# 1 would retrieve an associated weight.
	return mecanim_bone_muscles[mecanim_bone][muscle_axis][0]


static func pose_set_hips_position_rotation(
	_pose_muscles:PackedFloat64Array,
	hips_t:Vector3,
	hips_q:Quaternion,
	human_scale:float
) -> Dictionary:

	var spread_q = Quaternion.IDENTITY
	for bone_and_scale in spread_mass_q:
		var mecanim_bone:MecanimBodyBone = bone_and_scale[0]
		var bone_scale:Vector3 = bone_and_scale[1]

		var swing_twist_value:Vector3 = Vector3(
			_muscle_from_bone(mecanim_bone, MuscleAxis.X) * bone_scale[MuscleAxis.X],
			_muscle_from_bone(mecanim_bone, MuscleAxis.Y) * bone_scale[MuscleAxis.Y],
			_muscle_from_bone(mecanim_bone, MuscleAxis.Z) * bone_scale[MuscleAxis.Z]
		)

		spread_q *= ShaderMotionHelpers.swing_twist(swing_twist_value)

	# In the original ShaderMotion, HumanPoser.cs uses
	# Quaternion.LookRotation(Vector3.right, Vector3.forward) which
	# evaluates to Quaternion(0.5,0.5,0.5,0.5).
	# In order to get the same value here, I'm using
	#   Quaternion(Basis.looking_at(Vector3.LEFT, Vector3.BACK))
	
	# t for ???
	var t = Quaternion(Basis.looking_at(Vector3.LEFT, Vector3.BACK))
	return {
		"body_position": hips_t / human_scale,
		"body_rotation": hips_q * (t * spread_q * t.inverse())
	}

# motion_data is supposed to contain motion information
# in a data structure that can be referenced through mecanim bones indices.

# swing_twists must be a data structure with swing/twists values
# referenced by Mecanim Bones.
# Meaning that swing_twists[MecanimBone.???] must not fail
static func pose_set_bone_swing_twists(
	pose_muscles:PackedFloat64Array,
	swing_twists:Array
):

	pose_muscles.resize(MecanimMuscle.COUNT)
	pose_muscles.fill(0)
	for bone in MecanimBodyBone:
		var bone_related_muscles:Array = mecanim_bone_muscles[bone]
		var bone_related_swingtwist:Vector3 = swing_twists[bone].swing_twist
		for axis in MuscleAxis:
			var axis_info:Array = bone_related_muscles[axis]

			var muscle:MecanimMuscle = axis_info[0]
			var weight:float = axis_info[1]

			if muscle != MecanimMuscle.INVALID:
				pose_muscles[muscle] += bone_related_swingtwist[axis] * weight

	for muscle in MecanimMuscle:
#		var muscle_value:float = pose_muscles[muscle]

		var muscle_limits:Array[float] = mecanim_muscle_limits[muscle]
		var muscle_limit_min:float = muscle_limits[0]
		var muscle_limit_max:float = muscle_limits[1]
		var current_muscle_value:float = pose_muscles[muscle]

		if current_muscle_value >= 0:
			pose_muscles[muscle] = current_muscle_value / muscle_limit_max
		else:
			pose_muscles[muscle] = current_muscle_value / -muscle_limit_min

func _test_swing_twist():
	var file_data = FileAccess.open("res://tests/data/swing_twist_tests.csv", FileAccess.READ)
	var csv_row:PackedStringArray = file_data.get_csv_line()
	while (len(csv_row) == 7):
		var test_angle:Vector3 = Vector3(
			float(csv_row[0]),
			float(csv_row[1]),
			float(csv_row[2]))
		var unity_result:Quaternion = Quaternion(
			float(csv_row[3]),
			float(csv_row[4]),
			float(csv_row[5]),
			float(csv_row[6]))
		var our_result:Quaternion = ShaderMotionHelpers.swing_twist(test_angle)
		csv_row = file_data.get_csv_line()
		printerr("swing_twist(%s) -> %s (Unity: %s)" % [test_angle, our_result, unity_result])
		printerr("Equal (roughly) ? %s" % str(our_result.is_equal_approx(unity_result)))
	pass

static func shadermotion_tile_rect(
	tile_index:float, adjacent:int,
	tiles_per_column: float = 45,
	tile_width:int = 24,
	tile_height:int = 24) -> Rect2:
	var block_column:int = round(tile_index / tiles_per_column)
	var block_row:int = int(tile_index) % int(tiles_per_column)
	var block_x:int = block_column * (tile_width * 2)
	var block_y:int = block_row
	var x:int = block_x if adjacent == 0 else block_x + tile_width
	var y:int = block_y * tile_height
	
	var ret:Rect2 = Rect2(x, y, tile_width, tile_height)
#	printerr("Tile : %d - Rect : (%s)" % [tile_index, str(ret)])
	return ret

static func get_shadermotion_tile(
	main_texture:Image,
	tile_index:int,
	adjacent:bool,
	tiles_per_column:int = 45,
	tile_width:int = 24,
	tile_height:int = 24
) -> Image:
	var region : Rect2 = shadermotion_tile_rect(
		tile_index, int(adjacent),
		tiles_per_column, tile_width, tile_height)
	var image = main_texture.get_region(region)
	return image

static func get_shader_motion_tiles_from_texture(
	from_texture:Image,
	time : float,
	tiles_per_column:int = 45,
	tile_width:int = 24,
	tile_height:int = 24
) -> Dictionary:
	var tiles : Array[Image] = []
	for frame_block_name in ShaderMotionHelpers.block_tiles:
		var frame_block:Array = ShaderMotionHelpers.block_tiles[frame_block_name]
		for tile_index in frame_block:
			var tile: Image = get_shadermotion_tile(
				from_texture, tile_index, false,
				tiles_per_column, tile_width, tile_height)
			var tile_adjacent: Image = get_shadermotion_tile(
				from_texture, tile_index, true,
				tiles_per_column, tile_width, tile_height)
			tiles.push_back(tile)
			tiles.push_back(tile_adjacent)
	return { time : tiles }

static func get_shader_motion_tiles_part(
	video_frame:Texture2D,
	tiles_columns:int = 3,
	tiles_per_column:int = 45,
	tile_width:int = 24,
	tile_height:int = 24
) -> Texture2D:
	var ret_texture:Texture2D = AtlasTexture.new()
	ret_texture.atlas = video_frame
	ret_texture.region = Rect2(
		0, 0,
		tile_width * tiles_columns * 2, tile_height * tiles_per_column)
	return ret_texture



# ???
# Basically a copy-paste adaptation of ShaderMotion
# ShaderImpl.DecodeVideoFloat
static func decode_video_float(
	high:float,
	low:float,
	power:float
) -> float:

	var half_pow: float = (power - 1) / 2.0
	high = high * half_pow + half_pow
	low  = low  * half_pow + half_pow

	var x: int = UnityHelpers.roundeveni(low)

	var low_remainder: float = low - x
	var y: float = min(low_remainder, 0)
	var z: float = max(low_remainder, 0)
	var rounded_high: int = UnityHelpers.roundeveni(high)

	if (rounded_high & 1) != 0:
		x = int(power) - 1 - x
		var minus_z = -z
		var minus_y = -z
		y = minus_z
		z = minus_y

	if x == 0:
		y += min(0, high - rounded_high)
	if x == power - 1:
		z += max(0, high - rounded_high)

	x += rounded_high * int(power)
	x -= (float(power)*float(power)-1.0) / 2.0

	y += 0.5
	z -= 0.5

	var max_y_z = max(abs(y), abs(z))

	return (
		(y + z)
		/ max_y_z
		* 0.5
		+ x
	) / half_pow;

# ???
# A copy-paste implementation of ShaderImpl.orthogonalize
# Returns 2 vectors
static func orthogonalize(u:Vector3, v:Vector3) -> PackedVector3Array:
	var b:float = u.dot(v) * -2
	var a:float = u.dot(u) + v.dot(v)

	a += sqrt(abs(a * a - b * b))

	var ret_u:Vector3 = a * u + b * v
	ret_u *= (u.dot(ret_u) / ret_u.dot(ret_u))
	var ret_v:Vector3 = a * v + b * u
	ret_v *= (v.dot(ret_v) / ret_v.dot(ret_v))

	var returned_vectors:PackedVector3Array = PackedVector3Array()
	returned_vectors.append(ret_u)
	returned_vectors.append(ret_v)

	return returned_vectors

class HipsData:
	var position:Vector3 = GodotHelpers.invalid_vector
	var rotation:Quaternion = GodotHelpers.invalid_quaternion
	var scale:float = NAN

	func set_transform(
		new_position:Vector3,
		new_rotation:Quaternion,
		new_scale:float
	):
		self.position = new_position
		self.rotation = new_rotation
		self.scale = new_scale

	const _default_tile_radix: int = 3
	const _default_tile_height: int = 1
	const _default_tile_depth: int = 3
	const _default_tile_width: int = 2
	const _default_tile_pow: int = int(pow(
		_default_tile_radix,
		_default_tile_width
		* _default_tile_height
		* _default_tile_depth))
	const position_scale: int = 2

	func compute_from(
		decoded_values:PackedFloat32Array,
		tile_pow_value:int = _default_tile_pow
	):
		var vectors:PackedVector3Array = GodotHelpers.float32_array_to_packed_vector3(decoded_values)
		if len(vectors) < 4:
			printerr("Invalid Hips motion data !")
			return

		var position_high: Vector3 = vectors[0]
		var position_low: Vector3 = vectors[1]

		var decoded_position: Vector3 = Vector3(
			ShaderMotionHelpers.decode_video_float(position_high.x, position_low.x, tile_pow_value),
			ShaderMotionHelpers.decode_video_float(position_high.y, position_low.y, tile_pow_value),
			ShaderMotionHelpers.decode_video_float(position_high.z, position_low.z, tile_pow_value)
		)

		var rotation_vectors: PackedVector3Array = ShaderMotionHelpers.orthogonalize(vectors[2], vectors[3])

		var up_vector = rotation_vectors[0]
		var forward_vector = rotation_vectors[1]

		if not forward_vector.length() > 0:
			up_vector = UnityHelpers.vector_up
			forward_vector = UnityHelpers.vector_forward

		var look_rotation: Quaternion = UnityHelpers.look_rotation(forward_vector, up_vector)

		self.position = decoded_position * position_scale
		self.rotation = look_rotation
		self.scale = up_vector.length() / forward_vector.length()

	func meow():
		return (
			"Position : %s\nRotation : %s\nScale : %s"
			% [str(position), str(rotation), str(scale)]
		)

class MotionData:
	var swing_twist:Vector3 = GodotHelpers.invalid_vector
	var computed_rotation:Quaternion = GodotHelpers.invalid_quaternion
	var setup:bool = false

	func set_motion_data(swing_twist_data:Vector3, rotation_data:Quaternion):
		self.swing_twist = swing_twist_data
		self.computed_rotation = rotation_data
		self.setup = true

	func compute_from(bone:MecanimBodyBone, decoded_values:PackedFloat32Array):
		var decoded_vector: Vector3 = GodotHelpers.float32_array_to_vector3(decoded_values)
		var swing_twist_degrees: Vector3 = decoded_vector * 180
		var bone_dictionary = ShaderMotionHelpers.get_human_axes()
		var bone_signs: Vector3 = bone_dictionary[bone].limit_sign

		var signed_swing_twist: Vector3 = swing_twist_degrees * bone_signs
		var equivalent_rotation: Quaternion = ShaderMotionHelpers.swing_twist(signed_swing_twist)

		self.swing_twist = signed_swing_twist
		self.computed_rotation = equivalent_rotation

class ParsedMotions:
	var hips:HipsData = HipsData.new()
	var swing_twists:Array[MotionData]

	func _init():
		var swing_twists_values:Array[MotionData] = []
		swing_twists_values.resize(ShaderMotionHelpers.MecanimBodyBone.LastBone)

		for bone in range(int(ShaderMotionHelpers.MecanimBodyBone.LastBone)):
			swing_twists_values[bone] = MotionData.new()

		self.swing_twists = swing_twists_values

	static func _decoded_values_from(
		frame_tiles:Array,
		bone:ShaderMotionHelpers.MecanimBodyBone,
		get_slot_colors_method:Callable
	) -> PackedFloat32Array:

		var decoded_values:PackedFloat32Array = PackedFloat32Array()

		if not ShaderMotionHelpers.mecanim_bone_tiles.has(bone):
			return decoded_values

		var bone_related_slots:Array = ShaderMotionHelpers.mecanim_bone_tiles[bone]
		for slot_index in bone_related_slots:
			var slot_colors:Array[Color] = get_slot_colors_method.call(
				frame_tiles, slot_index)
			if slot_colors == null or len(slot_colors) < 2:
				return PackedFloat32Array()

			decoded_values.append(ShaderMotionHelpers.decode_slot_value(slot_colors))
		return decoded_values

	static func generate_from(
		tiles_data,
		tile_data_get_color_method:Callable
	) -> ParsedMotions:

		var parsed_motions:ParsedMotions = ParsedMotions.new()

		parsed_motions.hips.compute_from(_decoded_values_from(
			tiles_data,
			ShaderMotionHelpers.MecanimBodyBone.Hips,
			tile_data_get_color_method))

		# Rotate the hips to face the correct direction in Godot
		parsed_motions.hips.rotation.y += PI

		# Replicate values on MotionData to avoid corner cases everywhere
		var hips_motion:MotionData = parsed_motions.swing_twists[ShaderMotionHelpers.MecanimBodyBone.Hips]
		hips_motion.swing_twist = parsed_motions.hips.position
		hips_motion.computed_rotation = parsed_motions.hips.rotation

		for bone in range(1, int(ShaderMotionHelpers.MecanimBodyBone.LastBone)):

			var decoded_values:PackedFloat32Array = _decoded_values_from(
				tiles_data,
				bone,
				tile_data_get_color_method)
			if decoded_values.is_empty():
				continue

			parsed_motions.swing_twists[bone].compute_from(bone, decoded_values)

		return parsed_motions

	func _add_vector3_field(strings:PackedStringArray, vector:Vector3):
		strings.append(str(vector.x))
		strings.append(str(vector.y))
		strings.append(str(vector.z))

	func _add_quaternion_field(strings:PackedStringArray, quaternion:Quaternion):
		strings.append(str(quaternion.x))
		strings.append(str(quaternion.y))
		strings.append(str(quaternion.z))
		strings.append(str(quaternion.w))

	func _generate_record_from(fields:PackedStringArray) -> String:
		return "\t".join(fields)

	func export_to_tsv(tsv_filepath:String):
		var records:PackedStringArray = PackedStringArray()
		var header:PackedStringArray = PackedStringArray(
			[
				"Bone name",
				"SwingTwist.x",
				"SwingTwist.y",
				"SwingTwist.z",
				"Rotation.x",
				"Rotation.y",
				"Rotation.z",
				"Rotation.w",
				"Scale"
			]
		)
		var bone_names = ShaderMotionHelpers.MecanimBodyBone.keys()


		records.append(_generate_record_from(header))

		var current_record:PackedStringArray = PackedStringArray()
		for bone in range(int(ShaderMotionHelpers.MecanimBodyBone.LastBone)):

			current_record.clear()
			current_record.append(bone_names[bone])

			if bone != ShaderMotionHelpers.MecanimBodyBone.Hips:
				var bone_record:MotionData = swing_twists[bone]
				_add_vector3_field(current_record, bone_record.swing_twist)
				_add_quaternion_field(current_record, bone_record.computed_rotation)
				current_record.append(str(NAN))
			else:
				_add_vector3_field(current_record, hips.position)
				_add_quaternion_field(current_record, hips.rotation)
				current_record.append(str(hips.scale))
			records.append(_generate_record_from(current_record))

		var tsv_content:String = "\n".join(records)
		var tsv_file = FileAccess.open(tsv_filepath, FileAccess.WRITE)
		tsv_file.store_string(tsv_content)

static func _shadermotion_apply_scale(
	skeleton_root:Node3D,
	hips_data:HipsData,
	skeleton_human_scale:float,
	human_scale:float
) -> void:

	if human_scale == 0:
		return

	var base_scale:float = human_scale if human_scale > 0 else hips_data.scale 
	skeleton_root.scale = base_scale / skeleton_human_scale * Vector3.ONE
	return


static func _shadermotion_compute_hips_position(
	skeleton_root:Node3D,
	hips_data:HipsData,
	skeleton_human_scale:float
) -> Vector3:
	var applied_scale:float = hips_data.scale / skeleton_human_scale
	var local_point:Vector3 = hips_data.position / applied_scale

	# Manually calculate the global position
	var current_node: Node3D = skeleton_root
	var global_transform := Transform3D()
	while current_node:
		global_transform = current_node.transform * global_transform
		current_node = current_node.get_parent() if current_node.get_parent() is Node3D else null

	return global_transform * local_point


static func is_orthogonal(m: Basis) -> bool:
	var identity = Basis()
	var transposed_m = m.transposed()
	var result = m * transposed_m

	return result.is_equal_approx(identity)

static func convert_rotation(motion_rotation):
	# uses left-handed coordinates and Godot uses right-handed coordinates.
	# This means that we need to flip the sign of the Z and W components of the quaternion.
	return Quaternion(-motion_rotation.x, -motion_rotation.y, motion_rotation.z, -motion_rotation.w)

static func _shadermotion_compute_bone_rotation(
	bone_data:Dictionary,
	motion_rotation:Quaternion
) -> Quaternion:

	var pre_rotation = Quaternion()
	if is_orthogonal(bone_data["pre_rotation"]):
		pre_rotation = bone_data["pre_rotation"].get_rotation_quaternion()

	var post_rotation = Quaternion()
	if is_orthogonal(bone_data["post_rotation"]):
		post_rotation = bone_data["post_rotation"].get_rotation_quaternion()
	return pre_rotation * motion_rotation * post_rotation.inverse()

static func _shadermotion_multiply_bone_rotation(
	bone_data:Dictionary,
	motion_rotation:Quaternion,
	current_rotation:Quaternion
) -> Quaternion:
	var post_rotation:Quaternion
	if is_orthogonal(bone_data["post_rotation"]):
		post_rotation = bone_data["post_rotation"].get_rotation_quaternion()

	return current_rotation * post_rotation * motion_rotation * (post_rotation.inverse())

static func _shadermotion_apply_human_pose(
	skeleton_bones:Array[Node3D],
	skeleton_human_scale:float,
	parsed_motions:ParsedMotions
):

	var skeleton_root:Node3D = Node3D.new()

	_shadermotion_apply_scale(
		skeleton_root,
		parsed_motions.hips,
		skeleton_human_scale,
		-1)

	#printerr("Skeleton root scale : %s" % [str(skeleton_root.scale)])

	var hips_position:Vector3 = _shadermotion_compute_hips_position(
		skeleton_root,
		parsed_motions.hips,
		skeleton_human_scale)

	#printerr(hips_position)
	skeleton_bones[MecanimBodyBone.Hips].position = hips_position

	for bone in range(0, int(MecanimBodyBone.LastBone)):

		var decoded_rotation:Quaternion = parsed_motions.swing_twists[bone].computed_rotation
		if decoded_rotation == GodotHelpers.invalid_quaternion:
			continue

		var bone_rotation:Quaternion
		if bone != MecanimBodyBone.UpperChest:
			bone_rotation = _shadermotion_compute_bone_rotation(
				get_human_axes()[bone],
				decoded_rotation)
		else:
			bone_rotation = _shadermotion_multiply_bone_rotation(
				get_human_axes()[bone],
				decoded_rotation,
				skeleton_bones[bone].quaternion)
		skeleton_bones[bone].quaternion = bone_rotation

static func decoded_value_to_degrees(decoded_value:float):
	return decoded_value * 180

static func decode_slot_value(
	tile_colors:Array[Color]
) -> float:
	return ShaderMotionHLSLHelpers.decode_tiles(tile_colors)
