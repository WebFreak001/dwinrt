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
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotePlacementChangedPreviewEventArgs)this.asInterface(uuid("491d57b7-f780-4e7f-a939-9a4caf965214"))).get_ViewId(&_ret));
		return _ret;
	}
}

interface NoteVisibilityChangedPreviewEventArgs : Windows.ApplicationModel.Preview.Notes.INoteVisibilityChangedPreviewEventArgs
{
extern(Windows):
	final INT32 ViewId()
	{
		INT32 _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INoteVisibilityChangedPreviewEventArgs)this.asInterface(uuid("0e34649e-3815-4ff6-83b3-a14d17120e24"))).get_ViewId(&_ret));
		return _ret;
	}
	final bool IsVisible()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INoteVisibilityChangedPreviewEventArgs)this.asInterface(uuid("0e34649e-3815-4ff6-83b3-a14d17120e24"))).get_IsVisible(&_ret));
		return _ret;
	}
}

interface NotesWindowManagerPreview : Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2
{
extern(Windows):
	final bool IsScreenLocked()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).get_IsScreenLocked(&_ret));
		return _ret;
	}
	final void ShowNote(INT32 noteViewId)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_ShowNote(noteViewId));
	}
	final void ShowNoteRelativeTo(INT32 noteViewId, INT32 anchorNoteViewId)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_ShowNoteRelativeTo(noteViewId, anchorNoteViewId));
	}
	final void ShowNoteWithPlacement(INT32 noteViewId, Windows.Storage.Streams.IBuffer data)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_ShowNoteWithPlacement(noteViewId, data));
	}
	final void HideNote(INT32 noteViewId)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_HideNote(noteViewId));
	}
	final Windows.Storage.Streams.IBuffer GetNotePlacement(INT32 noteViewId)
	{
		Windows.Storage.Streams.IBuffer _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_GetNotePlacement(noteViewId, &_ret));
		return _ret;
	}
	final bool TrySetNoteSize(INT32 noteViewId, Windows.Foundation.Size size)
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_TrySetNoteSize(noteViewId, size, &_ret));
		return _ret;
	}
	final void SetFocusToNextView()
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_SetFocusToNextView());
	}
	final Windows.Foundation.IAsyncAction SetNotesThumbnailAsync(Windows.Storage.Streams.IBuffer thumbnail)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).abi_SetNotesThumbnailAsync(thumbnail, &_ret));
		return _ret;
	}
	final EventRegistrationToken OnSystemLockStateChanged(void delegate(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, IInspectable) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).add_SystemLockStateChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, IInspectable), Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, IInspectable)(fn), &tok));
		return tok;
	}
	final void removeSystemLockStateChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).remove_SystemLockStateChanged(token));
	}
	final EventRegistrationToken OnNotePlacementChanged(void delegate(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NotePlacementChangedPreviewEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).add_NotePlacementChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NotePlacementChangedPreviewEventArgs), Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NotePlacementChangedPreviewEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNotePlacementChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).remove_NotePlacementChanged(token));
	}
	final EventRegistrationToken OnNoteVisibilityChanged(void delegate(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NoteVisibilityChangedPreviewEventArgs) fn)
	{
		EventRegistrationToken tok;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).add_NoteVisibilityChanged(event!(Windows.Foundation.TypedEventHandler!(Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NoteVisibilityChangedPreviewEventArgs), Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview, Windows.ApplicationModel.Preview.Notes.NoteVisibilityChangedPreviewEventArgs)(fn), &tok));
		return tok;
	}
	final void removeNoteVisibilityChanged(EventRegistrationToken token)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview)this.asInterface(uuid("dc2ac23e-4850-4f13-9cc7-ff487efdfcde"))).remove_NoteVisibilityChanged(token));
	}
	final void ShowNoteRelativeToWithOptions(INT32 noteViewId, INT32 anchorNoteViewId, Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions options)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2)this.asInterface(uuid("edfe864a-1f54-4b09-9823-ff477f6fa3bc"))).abi_ShowNoteRelativeToWithOptions(noteViewId, anchorNoteViewId, options));
	}
	alias ShowNoteRelativeTo = ShowNoteRelativeToWithOptions;
	final void ShowNoteWithPlacementWithOptions(INT32 noteViewId, Windows.Storage.Streams.IBuffer data, Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreviewShowNoteOptions options)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2)this.asInterface(uuid("edfe864a-1f54-4b09-9823-ff477f6fa3bc"))).abi_ShowNoteWithPlacementWithOptions(noteViewId, data, options));
	}
	alias ShowNoteWithPlacement = ShowNoteWithPlacementWithOptions;
	final void SetFocusToPreviousView()
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2)this.asInterface(uuid("edfe864a-1f54-4b09-9823-ff477f6fa3bc"))).abi_SetFocusToPreviousView());
	}
	final Windows.Foundation.IAsyncAction SetThumbnailImageForTaskSwitcherAsync(Windows.Graphics.Imaging.SoftwareBitmap bitmap)
	{
		Windows.Foundation.IAsyncAction _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreview2)this.asInterface(uuid("edfe864a-1f54-4b09-9823-ff477f6fa3bc"))).abi_SetThumbnailImageForTaskSwitcherAsync(bitmap, &_ret));
		return _ret;
	}

	private static Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewStatics _staticInstance;
	public static Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewStatics staticInstance()
	{
		if (_staticInstance is null) _staticInstance = factory!(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewStatics);
		return _staticInstance;
	}
	static Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview GetForCurrentApp()
	{
		Windows.ApplicationModel.Preview.Notes.NotesWindowManagerPreview _ret;
		Debug.OK(staticInstance.abi_GetForCurrentApp(&_ret));
		return _ret;
	}
}

interface NotesWindowManagerPreviewShowNoteOptions : Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewShowNoteOptions
{
extern(Windows):
	final bool ShowWithFocus()
	{
		bool _ret;
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewShowNoteOptions)this.asInterface(uuid("886b09d6-a6ae-4007-a56d-1ca70c84c0d2"))).get_ShowWithFocus(&_ret));
		return _ret;
	}
	final void ShowWithFocus(bool value)
	{
		Debug.OK((cast(Windows.ApplicationModel.Preview.Notes.INotesWindowManagerPreviewShowNoteOptions)this.asInterface(uuid("886b09d6-a6ae-4007-a56d-1ca70c84c0d2"))).set_ShowWithFocus(value));
	}
	static NotesWindowManagerPreviewShowNoteOptions New()
	{
		IInspectable ret;
		Debug.OK(activationFactory!(NotesWindowManagerPreviewShowNoteOptions).abi_ActivateInstance(&ret));
		return cast(NotesWindowManagerPreviewShowNoteOptions) ret;
	}
}