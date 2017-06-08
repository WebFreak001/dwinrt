module Windows.ApplicationModel.DataTransfer.DragDrop;

import dwinrt;

@bitflags
enum DragDropModifiers
{
	None = 0x0,
	Shift = 0x1,
	Control = 0x2,
	Alt = 0x4,
	LeftButton = 0x8,
	MiddleButton = 0x10,
	RightButton = 0x20
}