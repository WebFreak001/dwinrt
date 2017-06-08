module Windows.Data.Xml.Xsl;

import dwinrt;

@uuid("7b64703f-550c-48c6-a90f-93a5b964518f")
@WinrtFactory("Windows.Data.Xml.Xsl.XsltProcessor")
interface IXsltProcessor : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TransformToString(Windows.Data.Xml.Dom.IXmlNode inputNode, HSTRING* return_output);
}

@uuid("8da45c56-97a5-44cb-a8be-27d86280c70a")
@WinrtFactory("Windows.Data.Xml.Xsl.XsltProcessor")
interface IXsltProcessor2 : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_TransformToDocument(Windows.Data.Xml.Dom.IXmlNode inputNode, Windows.Data.Xml.Dom.XmlDocument* return_output);
}

@uuid("274146c0-9a51-4663-bf30-0ef742146f20")
@WinrtFactory("Windows.Data.Xml.Xsl.XsltProcessor")
interface IXsltProcessorFactory : IInspectable
{
	mixin(generateRTMethods!(typeof(this)));

extern(Windows):
	HRESULT abi_CreateInstance(Windows.Data.Xml.Dom.XmlDocument document, Windows.Data.Xml.Xsl.XsltProcessor* return_xsltProcessor);
}

interface XsltProcessor
{
}