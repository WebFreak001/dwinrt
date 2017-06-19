module Windows.Graphics.DirectX.Direct3D11;

import dwinrt;

struct Direct3DMultisampleDescription
{
	INT32 Count;
	INT32 Quality;
}

struct Direct3DSurfaceDescription
{
	INT32 Width;
	INT32 Height;
	Windows.Graphics.DirectX.DirectXPixelFormat Format;
	Windows.Graphics.DirectX.Direct3D11.Direct3DMultisampleDescription MultisampleDescription;
}

@uuid("a37624ab-8d5f-4650-9d3e-9eae3d9bc670")
interface IDirect3DDevice_Base : IInspectable
{
extern(Windows):
	HRESULT abi_Trim();
}
@uuid("a37624ab-8d5f-4650-9d3e-9eae3d9bc670")
interface IDirect3DDevice : IDirect3DDevice_Base, Windows.Foundation.IClosable {}

@uuid("0bf4a146-13c1-4694-bee3-7abf15eaf586")
interface IDirect3DSurface_Base : IInspectable
{
extern(Windows):
	HRESULT get_Description(Windows.Graphics.DirectX.Direct3D11.Direct3DSurfaceDescription* return_value);
}
@uuid("0bf4a146-13c1-4694-bee3-7abf15eaf586")
interface IDirect3DSurface : IDirect3DSurface_Base, Windows.Foundation.IClosable {}

@bitflags
enum Direct3DBindings
{
	VertexBuffer = 0x1,
	IndexBuffer = 0x2,
	ConstantBuffer = 0x4,
	ShaderResource = 0x8,
	StreamOutput = 0x10,
	RenderTarget = 0x20,
	DepthStencil = 0x40,
	UnorderedAccess = 0x80,
	Decoder = 0x200,
	VideoEncoder = 0x400
}

enum Direct3DUsage
{
	Default = 0,
	Immutable = 1,
	Dynamic = 2,
	Staging = 3
}