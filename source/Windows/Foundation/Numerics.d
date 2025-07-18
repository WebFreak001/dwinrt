module Windows.Foundation.Numerics;

import dwinrt;

struct Matrix3x2
{
	float M11;
	float M12;
	float M21;
	float M22;
	float M31;
	float M32;
}

struct Matrix4x4
{
	float M11;
	float M12;
	float M13;
	float M14;
	float M21;
	float M22;
	float M23;
	float M24;
	float M31;
	float M32;
	float M33;
	float M34;
	float M41;
	float M42;
	float M43;
	float M44;
}

struct Vector3
{
	float X;
	float Y;
	float Z;
}

struct Plane
{
	Windows.Foundation.Numerics.Vector3 Normal;
	float D;
}

struct Quaternion
{
	float X;
	float Y;
	float Z;
	float W;
}

struct Vector2
{
	float X;
	float Y;
}

struct Vector4
{
	float X;
	float Y;
	float Z;
	float W;
}