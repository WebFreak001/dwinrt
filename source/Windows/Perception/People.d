module Windows.Perception.People;

import dwinrt;

@uuid("7f5ac5a5-49db-379f-9429-32a2faf34fa6")
@WinrtFactory("Windows.Perception.People.HeadPose")
interface IHeadPose : IInspectable
{
extern(Windows):
	HRESULT get_Position(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_ForwardDirection(Windows.Foundation.Numerics.Vector3* return_value);
	HRESULT get_UpDirection(Windows.Foundation.Numerics.Vector3* return_value);
}

interface HeadPose : Windows.Perception.People.IHeadPose
{
}