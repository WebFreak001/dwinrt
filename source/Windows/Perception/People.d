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
extern(Windows):
	final Windows.Foundation.Numerics.Vector3 Position()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Perception.People.IHeadPose).get_Position(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 ForwardDirection()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Perception.People.IHeadPose).get_ForwardDirection(&_ret));
		return _ret;
	}
	final Windows.Foundation.Numerics.Vector3 UpDirection()
	{
		Windows.Foundation.Numerics.Vector3 _ret;
		Debug.OK(this.as!(Windows.Perception.People.IHeadPose).get_UpDirection(&_ret));
		return _ret;
	}
}