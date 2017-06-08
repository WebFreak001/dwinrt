module Windows.Foundation.Numerics;

import dwinrt;

struct Matrix3x2
{
	FLOAT M11;
	FLOAT M12;
	FLOAT M21;
	FLOAT M22;
	FLOAT M31;
	FLOAT M32;
}

struct Matrix4x4
{
	FLOAT M11;
	FLOAT M12;
	FLOAT M13;
	FLOAT M14;
	FLOAT M21;
	FLOAT M22;
	FLOAT M23;
	FLOAT M24;
	FLOAT M31;
	FLOAT M32;
	FLOAT M33;
	FLOAT M34;
	FLOAT M41;
	FLOAT M42;
	FLOAT M43;
	FLOAT M44;
}

struct Vector3
{
	FLOAT X;
	FLOAT Y;
	FLOAT Z;
}

struct Plane
{
	Windows.Foundation.Numerics.Vector3 Normal;
	FLOAT D;
}

struct Quaternion
{
	FLOAT X;
	FLOAT Y;
	FLOAT Z;
	FLOAT W;
}

struct Vector2
{
	FLOAT X;
	FLOAT Y;
}

struct Vector4
{
	FLOAT X;
	FLOAT Y;
	FLOAT Z;
	FLOAT W;
}

