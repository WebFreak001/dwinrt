module Windows.Data.Xml.Xsl;

import dwinrt;

@uuid("7b64703f-550c-48c6-a90f-93a5b964518f")
@WinrtFactory("Windows.Data.Xml.Xsl.XsltProcessor")
interface IXsltProcessor : IInspectable
{
extern(Windows):
	HRESULT abi_TransformToString(Windows.Data.Xml.Dom.IXmlNode inputNode, HSTRING* return_output);
}

@uuid("8da45c56-97a5-44cb-a8be-27d86280c70a")
@WinrtFactory("Windows.Data.Xml.Xsl.XsltProcessor")
interface IXsltProcessor2 : IInspectable
{
extern(Windows):
	HRESULT abi_TransformToDocument(Windows.Data.Xml.Dom.IXmlNode inputNode, Windows.Data.Xml.Dom.XmlDocument* return_output);
}

@uuid("274146c0-9a51-4663-bf30-0ef742146f20")
@WinrtFactory("Windows.Data.Xml.Xsl.XsltProcessor")
interface IXsltProcessorFactory : IInspectable
{
extern(Windows):
	HRESULT abi_CreateInstance(Windows.Data.Xml.Dom.XmlDocument document, Windows.Data.Xml.Xsl.XsltProcessor* return_xsltProcessor);
}

interface XsltProcessor : Windows.Data.Xml.Xsl.IXsltProcessor, Windows.Data.Xml.Xsl.IXsltProcessor2
{
extern(Windows):
	final wstring TransformToString(Windows.Data.Xml.Dom.IXmlNode inputNode)
	{
		HSTRING _ret;
		Debug.OK((cast(Windows.Data.Xml.Xsl.IXsltProcessor)this.asInterface(uuid("7b64703f-550c-48c6-a90f-93a5b964518f"))).abi_TransformToString(inputNode, &_ret));
		return hstring(_ret).d_str;
	}
	final Windows.Data.Xml.Dom.XmlDocument TransformToDocument(Windows.Data.Xml.Dom.IXmlNode inputNode)
	{
		Windows.Data.Xml.Dom.XmlDocument _ret;
		Debug.OK((cast(Windows.Data.Xml.Xsl.IXsltProcessor2)this.asInterface(uuid("8da45c56-97a5-44cb-a8be-27d86280c70a"))).abi_TransformToDocument(inputNode, &_ret));
		return _ret;
	}
	static Windows.Data.Xml.Xsl.XsltProcessor New(Windows.Data.Xml.Dom.XmlDocument document)
	{
		auto factory = factory!(Windows.Data.Xml.Xsl.IXsltProcessorFactory);
		Windows.Data.Xml.Xsl.XsltProcessor _ret;
		Debug.OK((cast(Windows.Data.Xml.Xsl.IXsltProcessorFactory)factory.asInterface(uuid("274146c0-9a51-4663-bf30-0ef742146f20"))).abi_CreateInstance(document, &_ret));
		return _ret;
	}
}