module Windows.Foundation.Collections;

import dwinrt;

@uuid("575933df-34fe-4480-af15-07691f3d5d9b")
interface IVectorChangedEventArgs : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT get_CollectionChange(CollectionChange* return_value);
	HRESULT get_Index(uint* return_value);
}

interface PropertySet
{
}

interface StringMap
{
}

interface ValueSet
{
}

enum CollectionChange
{
	Reset,
	ItemInserted,
	ItemRemoved,
	ItemChanged
}