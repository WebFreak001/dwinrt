module Windows.ApplicationModel.Resources.Management;

import dwinrt;

@uuid("0e619ef3-faec-4414-a9d7-54acd5953f29")
@WinrtFactory("Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate")
interface IIndexedResourceCandidate : IInspectable
{
extern(Windows):
	HRESULT get_Type(Windows.ApplicationModel.Resources.Management.IndexedResourceType* return_value);
	HRESULT get_Uri(Windows.Foundation.Uri* return_value);
	HRESULT get_Metadata(Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING)* return_value);
	HRESULT get_Qualifiers(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Management.IndexedResourceQualifier)* return_value);
	HRESULT get_ValueAsString(HSTRING* return_value);
	HRESULT abi_GetQualifierValue(HSTRING qualifierName, HSTRING* return_qualifierValue);
}

@uuid("dae3bb9b-d304-497f-a168-a340042c8adb")
@WinrtFactory("Windows.ApplicationModel.Resources.Management.IndexedResourceQualifier")
interface IIndexedResourceQualifier : IInspectable
{
extern(Windows):
	HRESULT get_QualifierName(HSTRING* return_value);
	HRESULT get_QualifierValue(HSTRING* return_value);
}

@uuid("2d4cf9a5-e32f-4ab2-8748-96350a016da3")
@WinrtFactory("Windows.ApplicationModel.Resources.Management.ResourceIndexer")
interface IResourceIndexer : IInspectable
{
extern(Windows):
	HRESULT abi_IndexFilePath(Windows.Foundation.Uri filePath, Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate* return_candidate);
	HRESULT abi_IndexFileContentsAsync(Windows.Foundation.Uri file, Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate))* return_operation);
}

@uuid("b8de3f09-31cd-4d97-bd30-8d39f742bc61")
@WinrtFactory("Windows.ApplicationModel.Resources.Management.ResourceIndexer")
interface IResourceIndexerFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateResourceIndexer(Windows.Foundation.Uri projectRoot, Windows.ApplicationModel.Resources.Management.ResourceIndexer* return_indexer);
}

@uuid("6040f18d-d5e5-4b60-9201-cd279cbcfed9")
@WinrtFactory("Windows.ApplicationModel.Resources.Management.ResourceIndexer")
interface IResourceIndexerFactory2 : IInspectable
{
extern(Windows):
	HRESULT abi_CreateResourceIndexerWithExtension(Windows.Foundation.Uri projectRoot, Windows.Foundation.Uri extensionDllPath, Windows.ApplicationModel.Resources.Management.ResourceIndexer* return_indexer);
}

interface IndexedResourceCandidate : Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate
{
extern(Windows):
	final Windows.ApplicationModel.Resources.Management.IndexedResourceType Type()
	{
		Windows.ApplicationModel.Resources.Management.IndexedResourceType _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate).get_Type(&_ret));
		return _ret;
	}
	final Windows.Foundation.Uri Uri()
	{
		Windows.Foundation.Uri _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate).get_Uri(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) Metadata()
	{
		Windows.Foundation.Collections.IMapView!(HSTRING, HSTRING) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate).get_Metadata(&_ret));
		return _ret;
	}
	final Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Management.IndexedResourceQualifier) Qualifiers()
	{
		Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Management.IndexedResourceQualifier) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate).get_Qualifiers(&_ret));
		return _ret;
	}
	final HSTRING ValueAsString()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate).get_ValueAsString(&_ret));
		return _ret;
	}
	final HSTRING GetQualifierValue(HSTRING qualifierName)
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceCandidate).abi_GetQualifierValue(qualifierName, &_ret));
		return _ret;
	}
}

interface IndexedResourceQualifier : Windows.ApplicationModel.Resources.Management.IIndexedResourceQualifier
{
extern(Windows):
	final HSTRING QualifierName()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceQualifier).get_QualifierName(&_ret));
		return _ret;
	}
	final HSTRING QualifierValue()
	{
		HSTRING _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IIndexedResourceQualifier).get_QualifierValue(&_ret));
		return _ret;
	}
}

interface ResourceIndexer : Windows.ApplicationModel.Resources.Management.IResourceIndexer
{
extern(Windows):
	final Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate IndexFilePath(Windows.Foundation.Uri filePath)
	{
		Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IResourceIndexer).abi_IndexFilePath(filePath, &_ret));
		return _ret;
	}
	final Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate)) IndexFileContentsAsync(Windows.Foundation.Uri file)
	{
		Windows.Foundation.IAsyncOperation!(Windows.Foundation.Collections.IVectorView!(Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate)) _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Resources.Management.IResourceIndexer).abi_IndexFileContentsAsync(file, &_ret));
		return _ret;
	}
	static Windows.ApplicationModel.Resources.Management.ResourceIndexer New(Windows.Foundation.Uri projectRoot)
	{
		auto factory = factory!(Windows.ApplicationModel.Resources.Management.IResourceIndexerFactory);
		Windows.ApplicationModel.Resources.Management.ResourceIndexer _ret;
		Debug.OK(factory.as!(Windows.ApplicationModel.Resources.Management.IResourceIndexerFactory).abi_CreateResourceIndexer(projectRoot, &_ret));
		return _ret;
	}
}

enum IndexedResourceType
{
	String = 0,
	Path = 1,
	EmbeddedData = 2
}