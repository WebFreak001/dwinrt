module Windows.ApplicationModel.Preview.Notes;

import dwinrt;

@uuid("491d57b7-f780-4e7f-a939-9a4caf965214")
@WinrtFactory("Windows.ApplicationModel.Preview.Notes.NotePlacementChangedPreviewEventArgs")
interface INotePlacementChangedPreviewEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ViewId(INT32* return_value);
}

@uuid("0e34649e-3815-4ff6-83b3-a14d17120e24")
@WinrtFactory("Windows.ApplicationModel.Preview.Notes.NoteVisibilityChangedPreviewEventArgs")
interface INoteVisibilityChangedPreviewEventArgs : IInspectable
{
extern(Windows):
	HRESULT get_ViewId(INT32* return_value);
	HRESULT get_IsVisible(bool* return_value);
}

@uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde")
@WinrtFactory("Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview")
interface INotesWindowManagerPreview : IInspectable
{
extern(Windows):
	HRESULT get_IsScreenLocked(bool* return_value);
	HRESULT abi_ShowNote(INT32 noteViewId);
	HRESULT abi_ShowNoteRelativeTo(INT32 noteViewId, INT32 anchorNoteViewId);
	HRESULT abi_ShowNoteWithPlacement(INT32 noteViewId, Windows.Storage.Streams.IBuffer data);
	HRESULT abi_HideNote(INT32 noteViewId);
	HRESULT abi_GetNotePlacement(INT32 noteViewId, Windows.Storage.Streams.IBuffer* return_data);
	HRESULT abi_TrySetNoteSize(INT32 noteViewId, Windows.Foundation.Size size, bool* return_succeeded);
	HRESULT abi_SetFocusToNextView();
	HRESULT abi_SetNotesThumbnailAsync(Windows.Storage.Streams.IBuffer thumbnail, Windows.Foundation.IAsyncAction* return_operation);
	HRESULT add_SystemLockStateChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, IInspectable) handler, EventRegistrationToken* return_token);
	HRESULT remove_SystemLockStateChanged(EventRegistrationToken token);
	HRESULT add_NotePlacementChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NotePlacementChangedPreviewEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NotePlacementChanged(EventRegistrationToken token);
	HRESULT add_NoteVisibilityChanged(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NoteVisibilityChangedPreviewEventArgs) handler, EventRegistrationToken* return_token);
	HRESULT remove_NoteVisibilityChanged(EventRegistrationToken token);
}

@uuid("edfe864a-1f54-4b09-9823-ff477f6fa3bc")
@WinrtFactory("Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview")
interface INotesWindowManagerPreview2 : IInspectable
{
extern(Windows):
	HRESULT abi_ShowNoteRelativeToWithOptions(INT32 noteViewId, INT32 anchorNoteViewId, Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions options);
	HRESULT abi_ShowNoteWithPlacementWithOptions(INT32 noteViewId, Windows.Storage.Streams.IBuffer data, Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions options);
	HRESULT abi_SetFocusToPreviousView();
	HRESULT abi_SetThumbnailImageForTaskSwitcherAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap, Windows.Foundation.IAsyncAction* return_action);
}

@uuid("886b09d6-a6ae-4007-a56d-1ca70c84c0d2")
@WinrtFactory("Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions")
interface INotesWindowManagerPreviewShowNoteOptions : IInspectable
{
extern(Windows):
	HRESULT get_ShowWithFocus(bool* return_value);
	HRESULT set_ShowWithFocus(bool value);
}

@uuid("6668cc88-0a8e-4127-a38e-995445868a78")
@WinrtFactory("Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview")
interface INotesWindowManagerPreviewStatics : IInspectable
{
extern(Windows):
	HRESULT abi_GetForCurrentApp(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview* return_current);
}

interface NotePlacementChangedPreviewEventArgs : Windows.ApplicationModel.Preview.Notes.INotePlacementChangedPreviewEventArgs
{
extern(Windows):
	final INT32 ViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotePlacementChangedPreviewEventArgs).get_ViewId(&_ret));
		return _ret;
	}
}

interface NoteVisibilityChangedPreviewEventArgs : Windows.ApplicationModel.Preview.Notes.INoteVisibilityChangedPreviewEventArgs
{
extern(Windows):
	final INT32 ViewId()
	{
		INT32 _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INoteVisibilityChangedPreviewEventArgs).get_ViewId(&_ret));
		return _ret;
	}
	final bool IsVisible()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INoteVisibilityChangedPreviewEventArgs).get_IsVisible(&_ret));
		return _ret;
	}
}

interface NotesWindowManagerPreview : Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2
{
extern(Windows):
	final bool IsScreenLocked()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).get_IsScreenLocked(&_ret));
		return _ret;
	}
	final void ShowNote(INT32 noteViewId)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_ShowNote(noteViewId));
	}
	final void ShowNoteRelativeTo(INT32 noteViewId, INT32 anchorNoteViewId)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_ShowNoteRelativeTo(noteViewId, anchorNoteViewId));
	}
	final void ShowNoteWithPlacement(INT32 noteViewId, Windows.Storage.Streams.IBuffer data)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_ShowNoteWithPlacement(noteViewId, data));
	}
	final void HideNote(INT32 noteViewId)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_HideNote(noteViewId));
	}
	final Windows.Storage.Streams.IBuffer GetNotePlacement(INT32 noteViewId)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_GetNotePlacement(noteViewId, &_ret));
		return _ret;
	}
	final bool TrySetNoteSize(INT32 noteViewId, Windows.Foundation.Size size)
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_TrySetNoteSize(noteViewId, size, &_ret));
		return _ret;
	}
	final void SetFocusToNextView()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_SetFocusToNextView());
	}
	final Windows.Foundation.IAsyncAction SetNotesThumbnailAsync(Windows.Storage.Streams.IBuffer thumbnail)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview).abi_SetNotesThumbnailAsync(thumbnail, &_ret));
		return _ret;
	}
	final void ShowNoteRelativeToWithOptions(INT32 noteViewId, INT32 anchorNoteViewId, Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions options)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2).abi_ShowNoteRelativeToWithOptions(noteViewId, anchorNoteViewId, options));
	}
	final void ShowNoteWithPlacementWithOptions(INT32 noteViewId, Windows.Storage.Streams.IBuffer data, Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions options)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2).abi_ShowNoteWithPlacementWithOptions(noteViewId, data, options));
	}
	final void SetFocusToPreviousView()
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2).abi_SetFocusToPreviousView());
	}
	final Windows.Foundation.IAsyncAction SetThumbnailImageForTaskSwitcherAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2).abi_SetThumbnailImageForTaskSwitcherAsync(bitmap, &_ret));
		return _ret;
	}
}

interface NotesWindowManagerPreviewShowNoteOptions : Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewShowNoteOptions
{
extern(Windows):
	final bool ShowWithFocus()
	{
		bool _ret;
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewShowNoteOptions).get_ShowWithFocus(&_ret));
		return _ret;
	}
	final void ShowWithFocus(bool value)
	{
		Debug.OK(this.as!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewShowNoteOptions).set_ShowWithFocus(value));
	}
}